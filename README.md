# Relegram

Build
`docker build -t relegram-app .`

Run
`docker run -it --rm -v $(realpath ~/notebooks):/tf/notebooks -p 8888:8888 relegram-app`

Interact
`localhost:8888`