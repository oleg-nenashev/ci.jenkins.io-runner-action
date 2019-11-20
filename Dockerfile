FROM onenashev/ci.jenkins.io-runner

VOLUME /github/workspace

# Overrides the environment variables set by ci.jenkins.io-runner (hack)
ENV CASC_JENKINS_CONFIG=/var/jenkins_home/jenkins.yaml
COPY jenkins.yaml /var/jenkins_home/jenkins.yaml

ENTRYPOINT ["/app/bin/jenkinsfile-runner", \
            "-w", "/app/jenkins",\
            "-p", "/usr/share/jenkins/ref/plugins",\
            "-f", "/github/workspace", \
            "--runWorkspace", "/build"]
