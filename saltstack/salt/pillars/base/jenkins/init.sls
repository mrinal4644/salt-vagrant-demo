jenkins:
  config:
    jenkins_port: 8080
    dir:
      home: /var/lib/jenkins
      log: /var/log/jenkins
      cache: /var/cache/jenkins
    user: jenkins
    group: jenkins
    additional_groups: ["www-data"]
    server_name: "192.168.50.11"
    master_url: http://192.168.50.11:8080
    master_admin: cnMaestro Jenkins <cnmaestro_jenkins@cambiumnetworks.com>
    pkgs: 
      jenkins:
        version: 2.219
    java_args: -Djava.awt.headless=true
    java_executable: /usr/bin/java
    cli_path: /var/cache/jenkins/jenkins-cli.jar
    cli:
      connection_mode: http
      ssh_user:
      http_auth: admin:$(cat /var/lib/jenkins/secrets/initialAdminPassword)
    plugins:
      updates_source: http://updates.jenkins-ci.org/update-center.json
      timeout: 90
      installed:
        - trilead-api:1.0.5
        - jdk-tool:1.4
        - script-security:1.69
        - structs:1.20
        - workflow-step-api:2.22
        - scm-api:2.6.3
        - workflow-api:2.39
        - junit:1.28
        - token-macro:2.10
        - display-url-api:2.3.2
        - mailer:1.30
        - command-launcher:1.4
        - bouncycastle-api:2.18
        - matrix-project:1.14
        - email-ext:2.68
        - credentials:2.3.1
        - publish-over:0.22
        - ssh-credentials:1.18.1
        - jsch:0.1.55.2
        - workflow-scm-step:2.10
        - mapdb-api:1.0.9.0
        - authentication-tokens:1.3
        - javadoc:1.5
        - apache-httpcomponents-client-4-api:4.5.10-2.0
        - run-condition:1.2
        - maven-plugin:3.4
        - workflow-support:3.4
        - durable-task:1.33
        - workflow-durable-task-step:2.35
        - resource-disposer:0.14
        - ace-editor:1.1
        - jquery-detached:1.2.1
        - workflow-cps:2.78
        - ant:1.11
        - antisamy-markup-formatter:1.8
        - matrix-auth:2.5
        - pam-auth:1.6
        - ldap:1.21
        - external-monitor-job:1.7
        - cloudbees-folder:6.11.1
        - branch-api:2.5.5
        - git-client:3.1.1
        - git:4.1.1
        - mercurial:2.8
        - workflow-job:2.36
        - plain-credentials:1.7
        - code-coverage-api:1.1.3
        - emailext-template:1.1
        - publish-over-ssh:1.20.1
        - ssh-slaves:1.31.1
        - subversion:2.13.0
        - build-timeout:1.19
        - conditional-buildstep:1.3.6
        - ws-cleanup:0.38
        - parameterized-trigger:2.36
        - Parameterized-Remote-Trigger:3.1.1
        - configurationslicing:1.47
        - multiple-scms:0.6
        - cvs:2.14
        - build-name-setter:2.0.4
        - rebuild:1.31
        - windows-slaves:1.6
        - random-string-parameter:1.0
        - plot:2.1.3
        - artifactdeployer:1.2
        - next-build-number:1.6
        - job-restrictions:0.8
        - ui-samples-plugin:2.0
        - bitbucket-build-status-notifier:1.4.1
        - testInProgress:1.4
        - git-changelog:2.21
        - robot:2.0.1
        - htmlpublisher:1.21
        - generic-webhook-trigger:1.66
        - handy-uri-templates-2-api:2.1.8-1.0
        - xvnc:1.24
        - translation:1.16
        - jackson2-api:2.10.2
        - mailcommander:1.0.0
        - cobertura:1.15
        - publish-over-cifs:0.12
        - description-setter:1.10
        - flaky-test-handler:1.0.4
        - zentimestamp:4.2
        - cloudbees-bitbucket-branch-source:2.7.0
        - python:1.3
        - aws-java-sdk:1.11.700
        - copyartifact:1.43
        - s3:0.11.4
        - slack:2.36
        - publish-over-ftp:1.15
