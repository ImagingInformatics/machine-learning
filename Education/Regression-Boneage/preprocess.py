import numpy as np
import cv2

max_edge = 550

def preprocess(img):
    img = img.copy()
    img = img/255.
    m = np.mean(img)
    s = np.std(img)
    n_img = (img - m)/(s)
    return n_img

def resize_pad(img, max_edge = 550):
    aspect_ratio = img.shape[0]*1./img.shape[1]
    if np.argmax(img.shape) == 0:
        c = int(max_edge*1./aspect_ratio)
        new_shape = (c, max_edge)
        pw = (max_edge - c)//2
        pad_width = ((0,0), (pw, max_edge - c - pw))
    else:
        r = int(max_edge*aspect_ratio)
        new_shape = (max_edge, r)
        pw = (max_edge - r)//2
        pad_width = ((pw, max_edge - r - pw), (0,0))
    img = cv2.resize(img, new_shape, cv2.INTER_AREA)
    img = np.lib.pad(img, pad_width, 'constant')
    return img
