H:\mobiledev\Projects\vagrant-test2>ls -last
total 7
   2 drwxr-xr-x    1 User     Administ     4096 May 30 15:07 .
   1 -rwxr-xr-x    1 User     Administ     1562 May 30 15:00 script.sh
   2 -rw-r--r--    1 User     Administ     3971 May 30 14:45 VagrantFile
   2 drwxr-xr-x    1 User     Administ     4096 May 30 14:39 ..

H:\mobiledev\Projects\vagrant-test2>vagrant up > log.txt

H:\mobiledev\Projects\vagrant-test2>vagrant ssh
Welcome to Ubuntu 14.04.2 LTS (GNU/Linux 3.13.0-53-generic x86_64)

starting gulp watch...
[21:18:02] Using gulpfile /vagrant/project/gulpfile.js
[21:18:02] Starting 'build'...
[21:18:02] Starting 'clean'...
[21:18:02] Finished 'clean' after 10 ms
[21:18:02] Starting 'build-system'...
[21:18:02] Starting 'build-html'...
[21:18:03] Finished 'build-html' after 829 ms
[21:18:03] Finished 'build-system' after 848 ms
[21:18:03] Finished 'build' after 866 ms
[21:18:03] Starting 'serve'...
[BS] Local URL: http://localhost:9000
[BS] External URL: http://10.0.2.15:9000
[BS] Serving files from: .
[21:18:03] Finished 'serve' after 286 ms
[21:18:03] Starting 'watch'...
[21:18:03] Finished 'watch' after 66 ms