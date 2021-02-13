# nginx-nasbox
Docker image specs for special nginx based web server. The pictures
are stored on a NAS which is accessed using NFS.

NOTE: Since this uses NFS to connect to the NAS storing the pictures,
it must be run with protection turned off! Some day I'll figure out
how to get NFS to work with a small set of open ports so protection can
be kept on.

