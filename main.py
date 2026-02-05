import time

print("ModelWorks worker started...")

def run_worker():
    while True:
        # TODO: poll MinIO, DB, or queue for tasks
        time.sleep(5)

if __name__ == "__main__":
    run_worker()
