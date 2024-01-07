
# uFlaskHub
<p align="center">
    <img width="200" src="https://raw.githubusercontent.com/m4ary/uFlaskHub/main/uflask_logo.png" alt="Material Bread logo">
</p>


uFlaskHub is a streamlined tool for deploying Flask applications using uWSGI in Docker containers. It simplifies the process of setting up and managing Flask web applications, ensuring they are containerized and ready for scalable deployment.

## Features

- **Flask and uWSGI Integration**: Seamlessly combines Flask applications with uWSGI server deployment.
- **Docker Containerization**: Ensures consistent environments and easy deployment across different systems.
- **Automated Requirements Management**: Automatically updates `requirements.txt` using `pipreqs`.
- **Efficient Multithreading**: Leverages uWSGI's multithreading capabilities for improved performance.
- **Custom Configuration**: Allows for easy customization and configuration of Flask and uWSGI settings.
- **Logging and Monitoring**: Integrated logging to track the performance and issues of your Flask applications.

## Quick Start with Docker Compose

The easiest way to get started with uFlaskHub is using Docker Compose.

1. Ensure you have Docker and Docker Compose installed on your system.

2. Clone the repository:
   ```
   git clone https://github.com/m4ary/uFlaskHub
   ```

3. Navigate to the uFlaskHub directory:
   ```
   cd uFlaskHub
   ```

4. Start the application using Docker Compose:
   ```
   docker-compose up
   ```

5. Access the application at `http://localhost:8000/`.

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
   docker run -p 8000:8000 my-flask-app
   ```

5. Access the application at `http://localhost:8000/`.

## Environment Variables

- `SECRET_KEY`: Set this to a secure key.
- `helloWorld`: This is a custom environment variable used for demonstration.

## Contributing

Contributions to `uFlaskHub` are welcome! Feel free to fork the repository, make changes, and submit pull requests. For major changes or enhancements, please open an issue first to discuss what you would like to change.

## License

[MIT](https://choosealicense.com/licenses/mit/)

