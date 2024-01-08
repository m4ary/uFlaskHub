
# uFlaskHub
<p align="center">
    <img width="200" src="https://raw.githubusercontent.com/m4ary/uFlaskHub/main/uflask_logo.png" alt="uFlaskHub logo">
</p>

uFlaskHub uses Docker, uWSGI, and Flask to make deploying Flask applications easy. It provides a containerized setup for quick and consistent deployment.

- ## Features

  - **Flask & uWSGI**: Integrates Flask apps with uWSGI for smooth server deployment.
  - **Docker Support**: Provides consistent environments and simplifies deployment on various systems.
  - **Auto-update of Requirements**: Updates `requirements.txt` automatically using `pipreqs` for each build.

## Quick Start with Docker Compose

The easiest way to get started with uFlaskHub is using Docker Compose.

1. Ensure you have **Docker** and **Docker Compose** installed on your system, see [Docker docs](https://docs.docker.com/compose/install/)

2. Clone the repository:
   ```
   git clone https://github.com/m4ary/uFlaskHub
   ```

3. Navigate to the uFlaskHub directory:
   ```
   cd uFlaskHub
   ```

4. Modify the `docker-compose.yml`file to change the volume path to current path absolute path of **uFlaskHub**:

   ```yaml
   volumes:
     - /your/current/path/uFlaskHub:/usr/src/app
   ```

5. Start the application using Docker Compose:

   ```
   docker-compose up -d 
   ```

6. Access the application at `http://localhost:4000/`.

## Advanced Option: Building the Image

If you prefer to build the Docker image yourself, follow these steps:

1. Clone the repository:
   ```
   git clone https://github.com/m4ary/uFlaskHub
   ```

2. Navigate to the uFlaskHub directory:
   ```
   cd uFlaskHub
   ```

3. Build the Docker image:
   ```
   docker build -t my-flask-app .
   ```

4. Run the Docker container:
   ```
   docker run -p 4000:8000 my-flask-app
   ```

5. Access the application at `http://localhost:4000/`.

## Contributing

Contributions to `uFlaskHub` are welcome! Feel free to fork the repository, make changes, and submit pull requests.

## License

[MIT](https://choosealicense.com/licenses/mit/)
