# Legacy Coral build environment

Coral and JCoral are no longer maintained, but some people still need them.
Unfortunately as time goes on and bits rot, it becomes more and more finicky
to set up a build environment in just the right way.  This repo is an attempt
to mend this situation by defining a Docker image that replicates the build
environment that was used for Coral development at the time it was abandoned.
To use it, simply build the Docker image and run it with an output directory
mounted to `/mnt/out`:
```
docker build . -t coral-builder
docker run -it --rm -v /my/output/dir:/mnt/out coral-builder
```
Remember to replace `/my/output/dir` with your (host) output directory of
choice. After the second command completes, you should find a gzipped tar file
containing all the files for Coral and JCoral.

If you want to enter the container's shell to perform some manual work rather
than run the automated procedure, simply append `bash` to the last command:
```
docker run -it --rm -v /my/output/dir:/mnt/out coral-builder bash
```
