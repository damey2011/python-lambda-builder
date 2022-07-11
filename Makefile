format:
	poetry run black .
	poetry run mypy python_lambda_builder
	poetry run flake8 .

publish:
	poetry build
	poetry config pypi-token.pypi "$(TOKEN)"
	poetry publish
