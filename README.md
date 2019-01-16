# jupyter-javascript-docker

docker image for running [jupyter notebooks](https://jupyter.org/) with javascript code via the [IJavascript](https://github.com/n-riesco/ijavascript)  javascript kernel

**Build and Run**

```sh
# build and run (server)
docker build -t pfeilbr/jupyter-javascript . && docker run -v $PWD:/tmp/working -w=/tmp/working -p 8888:8888 --rm pfeilbr/jupyter-javascript

# build and run (interactive bash session)
docker build -t pfeilbr/jupyter-javascript . && docker run -v $PWD:/tmp/working -w=/tmp/working -p 8888:8888 --rm -it pfeilbr/jupyter-javascript bash -i

# remove `--rm` to persist changes made to the image

# push to docker hub
docker push pfeilbr/jupyter-javascript
```

**Example Package Usage**

[`example-package/examples.ipynb`](example-package/scratch.ipynb)

**Notebook Screenshot(s)**

![](https://www.evernote.com/l/AAF3Q0Z01m9K_oNxazMI-PMIZ5IXInicOHgB/image.png)