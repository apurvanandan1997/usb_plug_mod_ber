LIBS = -L ./lib -lftd3xx -lftd3xx-static -lstdc++-static -pthread -lrt

ARCH=-m64
CXXLIBS = -lstdc++

COMMON_FLAGS = -ffunction-sections -fmerge-all-constants $(ARCH)
COMMON_CFLAGS = -g -O3 -Wall -Wextra $(COMMON_FLAGS)
CFLAGS = -std=c99 $(COMMON_CFLAGS) -D_POSIX_C_SOURCE
CXXFLAGS = -std=c++11 $(COMMON_CFLAGS)

BUILD_DIR=build
SRC_DIR=src
BUILD_OUT=ber_test

all: $(BUILD_OUT)
	
$(BUILD_OUT): $(SRC_DIR)/$(BUILD_OUT).o
	$(CC) $(COMMON_FLAGS) -o $(SRC_DIR)/$@ $^ $(CXXLIBS) $(LIBS)
	@mkdir -p $(BUILD_DIR)
	mv $(SRC_DIR)/$(BUILD_OUT).o $(SRC_DIR)/$(BUILD_OUT) $(BUILD_DIR)/ 

clean:
	rm -rf build
