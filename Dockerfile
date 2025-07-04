FROM jupyter/scipy-notebook:python-3.10
WORKDIR /app
COPY . /app
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir tensorflow
EXPOSE 8888
CMD ["jupyter", "notebook", "--notebook-dir=notebooks", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--ServerApp.token=''", "--ServerApp.password=''", "--ServerApp.disable_check_xsrf=True", "--ServerApp.allow_origin='*'"]