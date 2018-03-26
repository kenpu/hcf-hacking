import docker

DESIGNER_IMAGE = "hcf/designer-notebook"

def main():
    client = docker.from_env()
    client.containers.run(DESIGNER_IMAGE,
            tty=True,
            auto_remove=True,
            command="/bin/bash")

main()


