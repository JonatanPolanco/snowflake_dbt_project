# dags/dbt_bash_dag.py
from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime

default_args = {
    'start_date': datetime(2023, 1, 1),
    'catchup': False,
}

with DAG(
    dag_id='dbt_bash_example',
    default_args=default_args,
    schedule_interval='@daily',
) as dag:

    dbt_run = BashOperator(
        task_id='dbt_run',
        bash_command='cd /ruta/a/tu/proyecto/dbt && dbt run',
    )

    dbt_test = BashOperator(
        task_id='dbt_test',
        bash_command='cd /ruta/a/tu/proyecto/dbt && dbt test',
    )

    dbt_run >> dbt_test