# Fast and lightweight webserver using gatling

This is a simple container for server `/usr/share/www` of container via http.

The used server is [gatling](https://www.fefe.de/gatling/) written by `fefe`.

The parameters passed to gatling can be devined via environment `GATLING_PARAMETER`.
These are the parameters for the server.

```bash
usage: gatling [-HhnvVtdDfFUa] [-i bind-to-ip] [-p bind-to-port] [-T seconds]
               [-u uid] [-c dir] [-w workgroup] [-P bytes] [-O ip/port/regex]
               [-r redirurl] [-N processes] [-I filename]

        -h      print this help
        -H      do not provide HTTP
        -v      enable virtual hosting mode
        -V      disable virtual hosting mode
                (default is to try both)
        -t      transproxy mode: do not replace :port in Host headers
        -d      generate directory index
        -D      do not generate directory index
                (default is -d unless in virtual hosting mode)
        -T n    set timeout in seconds (0 to disable, default 23)
        -u uid  switch to this UID after binding
        -c dir  chroot to dir after binding
        -n      do not produce logging output
        -f      provide FTP (default); next -p is meant for the FTP port (default: 21)
        -F      do not provide FTP
        -U      disallow FTP uploads, even to world writable directories
        -a      chmod go+r uploaded files, so they can be downloaded immediately
        -P n    enable experimental prefetching code (may actually be slower)
        -l      ask for password (FTP server; work around buggy proxies)
        -m fn   parse fn as mime.types style mime type database
        -A rpm  tarpit clients if they have more than rpm request per minute
        -C regex        regex for local CGI execution ("\.cgi")
                use -C+x to assume executables are CGIs
        -I name also try name, used for "index.php" etc
        -O [flag/]ip/port/regex regex for proxy mode ("F/127.0.0.1/8001/\.jsp$")
        -O [flag/]|filename|regex       regex for proxy mode ("F/|/tmp/php.sock|\.jsp$")
                flags: F - FastCGI, S - SCGI, J - JSP
        -s      provide SMB service (default)
        -S      do not provide SMB service
        -w name set SMB workgroup
        -r url  instead of a 404, generate a redirect to url+localpart
        -L      only accept connections from localhost or link/site local reserved IP addresses
```
