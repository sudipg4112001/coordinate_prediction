# Single Coordinate Prediction

The project involves human face images, each featuring a single face. The target landmark for prediction is the lip, which is annotated with a single coordinate or dot. The prediction is accomplished through a deep learning algorithm.

## Getting Started
### Approach and Challenges
The work involved examining various architectures, including those built from scratch and pre-trained models. It was observed that the ConvNeXtXLarge architecture demonstrated superior performance compared to others.

Moreover, a notable challenge encountered in this dataset was the presence of similar features to the target. Given that only a dot is being predicted, this presented a significant issue. To address this, the approach of scaling features involved employing an image-blurring technique before training.
### Dataset Description
The dataset, which comprises 150 human images, is stored in the `img` folder. Additionally, there is a CSV file named `labels.csv` containing annotations specifically targeting the lips of the human face.

### Prerequisites

- [Python](https://www.python.org/downloads/)
- [Git](https://git-scm.com/downloads)
- [Docker](https://www.docker.com/)

### Run local machine
1. Clone the repository:

    ```bash
    git clone https://github.com/sudipg4112001/coordinate_prediction
    cd coordinate_prediction

    ```
2. Install dependencies:

    ```bash
    pip install -r requirements.txt
    ```
3. Navigate to the Jupyter Notebook( `notebook.ipynb` ) and run it.

### Run on containerized environment

1. Clone the repository:

    ```bash
    git clone https://github.com/sudipg4112001/coordinate_prediction
    cd coordinate_prediction

    ```
2. Build the Docker Image:

   ```
   docker build -t coordinate_prediction
   ```
3. Run the Docker Container:
    ```
    docker run -p 8888:8888 coordinate-prediction
    ```
4. Access Jupyter Notebook:
    Navigate to [http://localhost:8888](http://localhost:8888) in web browser.
5. Stopping the Docker Container
Stop the Docker container using the following command:

```
docker stop <container_id>
```
Replace <container_id> with the actual container ID, which you can find using docker ps.

### Note:
The default notebook opened is 'notebook.ipynb'. To change it, update the `CMD` line in the `Dockerfile`.
If you're using Docker on Windows or macOS, find the Docker machine's IP address using `docker-machine ip`. In such a scenario, instead of `http://localhost:8888`, you would use `http://<docker_machine_ip>:8888`
