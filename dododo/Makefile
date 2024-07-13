GENERATE = tuist generate
FETCH = tuist fetch
BUILD = tuist build
CACHE = tuist cache DDDAttendance
CLEAN = tuist clean
INSTALL = tuist install

CURRENT_DATE = $(shell run scripts/current_date.swift)

# Define your targets and dependencies

.PHONY: generate
generate:
	 TUIST_ROOT_DIR=${PWD} $(GENERATE)

.PHONY: build
build: $(CLEAN) $(FETCH) $(FETCH) TUIST_ROOT_DIR=${PWD} $(GENERATE)

.PHONY: clean
clean:
	$(CLEAN)

.PHONY: fetch
install:
	$(INSTALL)

.PHONY: cache

cache:
	 $(CACHE)


module:
	tuist scaffold  $(template) \
         --layer ${layer} \
	 --name ${name} \
	 --author ${author}
	 	 

# Additional targets can be added as needed
