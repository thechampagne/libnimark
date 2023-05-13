# libnimark

[![](https://img.shields.io/github/v/tag/thechampagne/libnimark?label=version)](https://github.com/thechampagne/libnimark/releases/latest) [![](https://img.shields.io/github/license/thechampagne/libnimark)](https://github.com/thechampagne/libnimark/blob/main/LICENSE)

Fast markdown converter, based on CommonMark for **C**.

### Installation & Setup

#### 1. Clone the repository
```
git clone https://github.com/thechampagne/libnimark.git
```
#### 2. Navigate to the root
```
cd libnimark
```
#### 3. Install dependencies
```
make install-deps
```
#### 4. Build the project
```
make
```

### Example

```c
#include <stdio.h>
#include <stdlib.h>
#include "nimark.h"
int main(void)
{
  nimark_init(); // initialize garbage collector memory, types and stack
  char* md = nimark_markdown("> Lorem ipsum dolor\nsit amet.\n> - Qui *quodsi iracundia*\n> - aliquando id");
  printf("%s", md);
  free(md);
  return 0;
}
```

### References
 - [nmark](https://github.com/kyoheiu/nmark)

### License

This repo is released under the [MIT](https://github.com/thechampagne/libnimark/blob/main/LICENSE).
