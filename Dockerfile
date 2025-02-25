FROM haskell:9.10.1-slim-bullseye
WORKDIR /hakyll_site
COPY . .
RUN cabal update && cabal install hakyll-4.16.5.0 && cabal new-install site
CMD ["site", "watch"]

