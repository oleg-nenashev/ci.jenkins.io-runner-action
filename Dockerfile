FROM onenashev/ci.jenkins.io-runner

VOLUME /github/workspace

ENTRYPOINT ["/app/bin/jenkinsfile-runner-launcher", \
            "-w", "/app/jenkins",\
            "-p", "/usr/share/jenkins/ref/plugins",\
            "-f", "/github/workspace", \
            "--runWorkspace", "/build"]
