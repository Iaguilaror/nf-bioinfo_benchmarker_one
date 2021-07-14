# To run this test quickly as docker just
1. Install docker
2. Add your user to docker group

3. Execute
` docker build --force-rm -t biofree_benchmark_one:latest . `
# this will take some time

4. Run the docker with a local volume asociated
docker run -v $(pwd)/results:/home/test/one/results biofree_benchmark_one

5. See the results at $(pwd)/results:/home/test/one/results
