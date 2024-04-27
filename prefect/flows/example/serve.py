from prefect import flow

if __name__ == "__main__":
    flow.from_source(
        source="https://github.com/ylmzkaan/prefectflows.git",
        entrypoint="toy_flow.py:say_hi",
    ).serve(name="deployment-with-github-storage")
