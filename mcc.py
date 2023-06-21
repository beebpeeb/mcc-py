import duckdb as db
from prefect import flow, task

db.load_extension("https")
db.load_extension("fts")


@task
def create_tables():
    trips_url = ""
    zones_url = ""
