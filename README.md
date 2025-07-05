# End-to-End Data Engineering Project: dbt, Snowflake & Apache Airflow

This project is a **complete data engineering pipeline** built with **dbt (Data Build Tool)**, **Snowflake (Data Warehouse)**, and **Apache Airflow (Orchestration Tool)**. It demonstrates a modern ELT workflow covering **data ingestion**, **transformation**, **testing**, and **scheduling** in a scalable and modular setup.

The tech stack includes:

* **dbt Core** – for SQL-based data transformation and modeling
* **Snowflake** – as the cloud-based data warehouse
* **Apache Airflow** – for workflow automation and orchestration
* **Python** – for scripting and environment setup
* **Git** – for version control

The project simulates a financial data pipeline where seed data is loaded into Snowflake, transformed via dbt into staging and mart models, validated with dbt tests, and orchestrated using Airflow DAGs.

Project structure:

```sh
snowflake_data_project/
│——  models/                 # dbt models (staging, marts)
│——  dags/                   # Airflow DAGs (for scheduling)
│——  logs/                   # Airflow logs
│——  seeds/                  # Sample seed data for dbt
│——  macros/                 # dbt macros
│——  dbt_project.yml         # dbt project config file
│——  README.md               # Project documentation
```

To run this project locally, start by cloning the repository:

```sh
git clone https://github.com/ansamAY/dbt_snowflake_project.git
cd dbt_snowflake_project
```

Then create and activate a virtual environment:

```sh
python -m venv venv
source venv/bin/activate  # On macOS/Linux
venv\Scripts\activate     # On Windows
```


Next, configure your dbt connection to Snowflake by editing the `profiles.yml` file located in `~/.dbt/`:

```sh
snowflake_project:
  outputs:
    dev:
      account: your_snowflake_account
      database: finance_db
      user: dbt_user
      password: your_password
      warehouse: finance_wh
      role: ACCOUNTADMIN
      schema: raw
      type: snowflake
  target: dev
```

Once everything is configured, you can run your dbt models and test them:

```sh
dbt run
dbt test
```

To automate and schedule workflows, launch Apache Airflow:

```sh
airflow standalone
```

This will start the Airflow webserver and scheduler. Open your browser and go to [http://localhost:8080](http://localhost:8080) to access the Airflow UI (default credentials: `admin / admin`), where you can trigger your DAGs.

This project demonstrates the integration of powerful data engineering tools into a cohesive ELT pipeline. It reflects real-world workflows for analytics engineering, making it a great foundation for scalable and production-ready data pipelines.
