
volt-data:
	# Run script to get data, add CSVs to data folder
	python acquireData.py

run_jupyter:
	# Start Jupyter notebook
	docker-compose -f docker-compose.yml -f docker-compose-local-dev.yml run --service-ports volt-metrics jupyter notebook --no-browser --ip='0.0.0.0' --allow-root