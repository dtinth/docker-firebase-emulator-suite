# Firebase Emulator Suite, dockerized

This is a dockerized version of the [Firebase Local Emulator Suite](https://firebase.google.com/docs/emulator-suite). It is based on the official [Firebase CLI](https://hub.docker.com/r/firebase/cli). The published Docker image is rebuilt every week on GitHub Action.

| Service        | Port                           |
| -------------- | ------------------------------ |
| UI             | [4000](http://localhost:4000/) |
| Authentication | [9099](http://localhost:9099/) |
| Firestore      | [8080](http://localhost:8080/) |
| Database       | [9000](http://localhost:9000/) |
| Pub/Sub        | [8085](http://localhost:8085/) |
| Storage        | [9199](http://localhost:9199/) |

## Quick start with Docker Compose

```yaml
services:
  firebase:
    image: ghcr.io/dtinth/firebase-emulator-suite:main
    ports:
      - 9099:9099
      - 8080:8080
      - 9000:9000
      - 8085:8085
      - 9199:9199
      - 4000:4000
```
