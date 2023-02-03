export {http,https,all}_proxy=http://localhost:3128
export {HTTP,HTTPS,ALL}_PROXY=$http_proxy
export no_proxy="http://localhost:3128, *.local, 169.254/16, 10.*, 150.*, *.global.anz.com, *.service.anz, *.service.dev, *.apps.anz, *.dev.anz,*.globaltest.anz.com, *.service.test, *.internal, *.googleapis.com, *.proxy.golang.org, *.a.run.app"
export NO_PROXY="http://localhost:3128, *.local, 169.254/16, 10.*, 150.*, *.global.anz.com, *.service.anz, *.service.dev, *.apps.anz, *.dev.anz,*.globaltest.anz.com, *.service.test, *.internal, *.googleapis.com, *.proxy.golang.org, *.a.run.app"
export GLOBAL_ROOT_CA_CERT="$HOME/.ssh/anz_global_root_ca_v2.pem"
export DOCKER_BUILDKIT=0
