[![](https://images.microbadger.com/badges/image/keinos/hugo-alpine.svg)](https://microbadger.com/images/keinos/hugo-alpine "View image info on microbadger.com") [![](https://img.shields.io/docker/cloud/automated/keinos/hugo-alpine.svg)](https://hub.docker.com/r/keinos/hugo-alpine "View on Docker Hub") [![](https://img.shields.io/docker/cloud/build/keinos/hugo-alpine.svg)](https://hub.docker.com/r/keinos/hugo-alpine/builds "View build status on Docker Hub")

# Dockerfile of Hugo-Alpine

Dockerfile of latest stable of Hugo on Alpine Linux.

```bash
docker pull keinos/hugo-alpine
```

- Note: This image will be updated whenever the base image is updated automatically. Not when `HUGO` is updated.
- Image Info:
  - Base Image: [`keinos/alpine` @ Docker Hub](https://hub.docker.com/r/keinos/alpine)
  - Entrypoint: `/usr/local/bin/hugo`
  - Hugo version: Latest stable
- Repositories:
  - Image: https://hub.docker.com/r/keinos/hugo-alpine @ Docker Hub
  - Source: https://github.com/KEINOS/Dockerfile_of_Hugo-Alpine @ GitHub
- Issue: https://github.com/KEINOS/Dockerfile_of_Hugo-Alpine/issues @ GitHub

## Usage

```shellsession
$ # Check HUGO's version (same as `$ hugo version`)
$ docker run --rm keinos/hugo-alpine version
Hugo Static Site Generator v0.55.6 linux/amd64 BuildDate: 2019-05-29T15:18:01+0900
```

```shellsession
$ # View HUGO's help (same as `$ hugo --help`)
$ docker run --rm keinos/hugo-alpine --help
hugo is the main command, used to build your Hugo site.

Hugo is a Fast and Flexible Static Site Generator
built with love by spf13 and friends in Go.

Complete documentation is available at http://gohugo.io/.

Usage:
  hugo [flags]
  hugo [command]

Available Commands:
  config      Print the site configuration
  convert     Convert your content to different formats
  env         Print Hugo version and environment info
  gen         A collection of several useful generators.
  help        Help about any command
  import      Import your site from others.
  list        Listing out various types of content
  new         Create new content for your site
  server      A high performance webserver
  version     Print the version number of Hugo

Flags:
  -b, --baseURL string         hostname (and path) to the root, e.g. http://spf13.com/
  -D, --buildDrafts            include content marked as draft
  -E, --buildExpired           include expired content
  -F, --buildFuture            include content with publishdate in the future
      --cacheDir string        filesystem path to cache directory. Defaults: $TMPDIR/hugo_cache/
      --cleanDestinationDir    remove files from destination not found in static directories
      --config string          config file (default is path/config.yaml|json|toml)
      --configDir string       config dir (default "config")
  -c, --contentDir string      filesystem path to content directory
      --debug                  debug output
  -d, --destination string     filesystem path to write files to
      --disableKinds strings   disable different kind of pages (home, RSS etc.)
      --enableGitInfo          add Git revision, date and author info to the pages
  -e, --environment string     build environment
      --forceSyncStatic        copy all files when static is changed.
      --gc                     enable to run some cleanup tasks (remove unused cache files) after the build
  -h, --help                   help for hugo
      --i18n-warnings          print missing translations
      --ignoreCache            ignores the cache directory
  -l, --layoutDir string       filesystem path to layout directory
      --log                    enable Logging
      --logFile string         log File path (if set, logging enabled automatically)
      --minify                 minify any supported output format (HTML, XML etc.)
      --noChmod                don't sync permission mode of files
      --noTimes                don't sync modification time of files
      --path-warnings          print warnings on duplicate target paths etc.
      --quiet                  build in quiet mode
      --renderToMemory         render to memory (only useful for benchmark testing)
  -s, --source string          filesystem path to read files relative from
      --templateMetrics        display metrics about template executions
      --templateMetricsHints   calculate some improvement hints when combined with --templateMetrics
  -t, --theme strings          themes to use (located in /themes/THEMENAME/)
      --themesDir string       filesystem path to themes directory
      --trace file             write trace to file (not useful in general)
  -v, --verbose                verbose output
      --verboseLog             verbose logging
  -w, --watch                  watch filesystem for changes and recreate as needed

Additional help topics:
  hugo check   Contains some verification checks

Use "hugo [command] --help" for more information about a command.
```
