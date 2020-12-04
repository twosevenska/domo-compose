SHELL := /bin/bash

CORE_FILE = docker-compose.yml
MEDIA_FILE = docker-compose-media.yml
MEDIA_BACK_FILE = docker-compose-media-back.yml
DISCORD_FILE = docker-compose-discord.yml
FS_FILE = docker-compose-fs.yml

.PHONY: all
all: core media discord fs

.PHONY: kill-all
kill-all:
	docker-compose -f $(CORE_FILE) kill
	docker-compose -f $(MEDIA_FILE) kill
	docker-compose -f $(MEDIA_FILE) kill
	docker-compose -f $(DISCORD_FILE) kill
	docker-compose -f $(FS_FILE) kill

.PHONY: core
core: clean-docker
	docker-compose -f $(CORE_FILE) pull
	docker-compose -f $(CORE_FILE) kill
	docker-compose -f $(CORE_FILE) up -d

.PHONY: media
media: clean-docker
	docker-compose -f $(MEDIA_FILE) pull
	docker-compose -f $(MEDIA_FILE) kill
	docker-compose -f $(MEDIA_FILE) up -d

.PHONY: media-back
media-back: clean-docker
	docker-compose -f $(MEDIA_BACK_FILE) pull
	docker-compose -f $(MEDIA_BACK_FILE) kill
	docker-compose -f $(MEDIA_BACK_FILE) up -d

.PHONY: discord
discord: clean-docker
	docker-compose -f $(DISCORD_FILE) pull
	docker-compose -f $(DISCORD_FILE) kill
	docker-compose -f $(DISCORD_FILE) up -d

.PHONY: fs
fs: clean-docker
	docker-compose -f $(FS_FILE) pull
	docker-compose -f $(FS_FILE) kill
	docker-compose -f $(FS_FILE) up -d

.PHONY: clean-docker
clean-docker:
	@docker volume rm $(shell docker volume ls -qf dangling=true) 2>/dev/null ||:
	@docker rmi $(shell docker images -q -f dangling=true) 2>/dev/null ||:

