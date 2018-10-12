# jupyter-notebooks
Image with example jupyter notebooks under /notebooks

## Pre-Load Volumes

In order to use this image to pre-load volumes:

```
$ docker run -ti --rm -v $(pwd):/data  qnib/jupyter-notebooks /copy /notebooks /data/nb.copy
/notebooks /data/nb.copy
```
This will copy the notebook in whatever volume you created.
