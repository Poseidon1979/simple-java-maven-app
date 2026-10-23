# simple-java-maven-app

This repository is for the
[Build a Java app with Maven](https://jenkins.io/doc/tutorials/build-a-java-app-with-maven/)
tutorial in the [Jenkins User Documentation](https://jenkins.io/doc/).

The repository contains a simple Java application which outputs the string
"Hello world!" and is accompanied by a couple of unit tests to check that the
main application works as expected. The results of these tests are saved to a
JUnit XML report.

The pipeline now runs through GitHub Actions in
[`.github/workflows/maven.yml`](.github/workflows/maven.yml). Use **Actions >
Maven build, test and deliver > Run workflow** after the workflow is merged into
the default branch. It builds and tests in `maven:3.9.0`, uploads the JUnit XML
reports even when tests fail, then installs and runs the application on success.
Delivery installs into the runner's local Maven repository; it does not publish
to an external package registry.

The original Jenkinsfile and delivery script are archived under
[`.github/ci-archive/jenkins/`](.github/ci-archive/jenkins/).
See the [migration report](.github/ci-archive/MIGRATION-README.md) for behavior
mapping, validation results, and operational follow-ups.
