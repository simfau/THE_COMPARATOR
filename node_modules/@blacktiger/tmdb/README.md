# TMDB

[![NPM version](https://img.shields.io/npm/v/@blacktiger/tmdb.svg)](https://www.npmjs.com/package/@blacktiger/tmdb)
[![wakatime](https://wakatime.com/badge/github/BlackTiger007/TMDB.svg)](https://wakatime.com/badge/github/BlackTiger007/TMDB)

## Install

```bash
npm i @blacktiger/tmdb
```

## Usage

The API key is validated when the instance is created.

```ts
import TMDB from '@blacktiger/tmdb';

const tmdb = new TMDB(/* Your API Key */, /* Optional Language, Default en-US */);
```

## Features

### Account

| **Feature**                                                                               | **Status** |
| ----------------------------------------------------------------------------------------- | ---------- |
| [Details](https://developer.themoviedb.org/reference/account-details)                     | ✅         |
| [Add Favorite](https://developer.themoviedb.org/reference/account-add-favorite)           | ✅         |
| [Add To Watchlist](https://developer.themoviedb.org/reference/account-add-to-watchlist)   | ✅         |
| [Favorite Movies](https://developer.themoviedb.org/reference/account-get-favorites)       | ✅         |
| [Favorite TV](https://developer.themoviedb.org/reference/account-favorite-tv)             | ✅         |
| [Lists](https://developer.themoviedb.org/reference/account-lists)                         | ✅         |
| [Rated Movies](https://developer.themoviedb.org/reference/account-rated-movies)           | ✅         |
| [Rated TV](https://developer.themoviedb.org/reference/account-rated-tv)                   | ✅         |
| [Rated TV Episodes](https://developer.themoviedb.org/reference/account-rated-tv-episodes) | ✅         |
| [Watchlist Movies](https://developer.themoviedb.org/reference/account-watchlist-movies)   | ✅         |
| [Watchlist TV](https://developer.themoviedb.org/reference/account-watchlist-tv)           | ✅         |

### Authentication

| **Feature**                                                                                                              | **Status** |
| ------------------------------------------------------------------------------------------------------------------------ | ---------- |
| [Create Guest Session](https://developer.themoviedb.org/reference/authentication-create-guest-session)                   | ✅         |
| [Create Request Token](https://developer.themoviedb.org/reference/authentication-create-request-token)                   | ✅         |
| [Create Session](https://developer.themoviedb.org/reference/authentication-create-session)                               | ✅         |
| [Create Session (from v4 token)](https://developer.themoviedb.org/reference/authentication-create-session-from-v4-token) | ✅         |
| [Create Session (with login)](https://developer.themoviedb.org/reference/authentication-create-session-from-login)       | ✅         |
| [Delete Session](https://developer.themoviedb.org/reference/authentication-delete-session)                               | ✅         |
| [Validate Key](https://developer.themoviedb.org/reference/authentication-validate-key)                                   | ✅         |

### Certifications

| **Feature**                                                                                 | **Status** |
| ------------------------------------------------------------------------------------------- | ---------- |
| [Movie Certifications](https://developer.themoviedb.org/reference/certification-movie-list) | ✅         |
| [TV Certifications](https://developer.themoviedb.org/reference/certifications-tv-list)      | ✅         |

### Changes

| **Feature**                                                                   | **Status** |
| ----------------------------------------------------------------------------- | ---------- |
| [Movie List](https://developer.themoviedb.org/reference/changes-movie-list)   | ✅         |
| [People List](https://developer.themoviedb.org/reference/changes-people-list) | ✅         |
| [TV List](https://developer.themoviedb.org/reference/changes-tv-list)         | ✅         |

### Collections

| **Feature**                                                                        | **Status** |
| ---------------------------------------------------------------------------------- | ---------- |
| [Details](https://developer.themoviedb.org/reference/collection-details)           | ✅         |
| [Images](https://developer.themoviedb.org/reference/collection-images)             | ✅         |
| [Translations](https://developer.themoviedb.org/reference/collection-translations) | ✅         |

### Companies

| **Feature**                                                                               | **Status** |
| ----------------------------------------------------------------------------------------- | ---------- |
| [Details](https://developer.themoviedb.org/reference/company-details)                     | ✅         |
| [Alternative Names](https://developer.themoviedb.org/reference/company-alternative-names) | ✅         |
| [Images](https://developer.themoviedb.org/reference/company-images)                       | ✅         |

### Configuration

| **Feature**                                                                                           | **Status** |
| ----------------------------------------------------------------------------------------------------- | ---------- |
| [Details](https://developer.themoviedb.org/reference/configuration-details)                           | ✅         |
| [Countries](https://developer.themoviedb.org/reference/configuration-countries)                       | ✅         |
| [Jobs](https://developer.themoviedb.org/reference/configuration-jobs)                                 | ✅         |
| [Languages](https://developer.themoviedb.org/reference/configuration-languages)                       | ✅         |
| [Primary Translations](https://developer.themoviedb.org/reference/configuration-primary-translations) | ✅         |
| [Timezones](https://developer.themoviedb.org/reference/configuration-timezones)                       | ✅         |

### Credits

| **Feature**                                                          | **Status** |
| -------------------------------------------------------------------- | ---------- |
| [Details](https://developer.themoviedb.org/reference/credit-details) | ✅         |

### Discover

| **Feature**                                                        | **Status** |
| ------------------------------------------------------------------ | ---------- |
| [Movie](https://developer.themoviedb.org/reference/discover-movie) | ✅         |
| [TV](https://developer.themoviedb.org/reference/discover-tv)       | ✅         |

### Find

| **Feature**                                                         | **Status** |
| ------------------------------------------------------------------- | ---------- |
| [Find By ID](https://developer.themoviedb.org/reference/find-by-id) | ✅         |

### Genres

| **Feature**                                                               | **Status** |
| ------------------------------------------------------------------------- | ---------- |
| [Movie List](https://developer.themoviedb.org/reference/genre-movie-list) | ✅         |
| [TV List](https://developer.themoviedb.org/reference/genre-tv-list)       | ✅         |

### Guest Sessions

| **Feature**                                                                                     | **Status** |
| ----------------------------------------------------------------------------------------------- | ---------- |
| [Rated Movies](https://developer.themoviedb.org/reference/guest-session-rated-movies)           | ✅         |
| [Rated TV](https://developer.themoviedb.org/reference/guest-session-rated-tv)                   | ✅         |
| [Rated TV Episodes](https://developer.themoviedb.org/reference/guest-session-rated-tv-episodes) | ✅         |

### Keywords

| **Feature**                                                           | **Status**                                                               |
| --------------------------------------------------------------------- | ------------------------------------------------------------------------ |
| [Details](https://developer.themoviedb.org/reference/keyword-details) | ✅                                                                       |
| [Movies](https://developer.themoviedb.org/reference/keyword-movies)   | ☑️ [Outdated](https://developer.themoviedb.org/reference/discover-movie) |

### Lists

[v3 or v4 lists?](https://developer.themoviedb.org/reference/v3-or-v4-lists)

| **Feature**                                                                            | **Status** |
| -------------------------------------------------------------------------------------- | ---------- |
| [Add Movie](https://developer.themoviedb.org/reference/list-add-movie)                 | ✅         |
| [Check Item Status](https://developer.themoviedb.org/reference/list-check-item-status) | ✅         |
| [Clear](https://developer.themoviedb.org/reference/list-clear)                         | ✅         |
| [Create](https://developer.themoviedb.org/reference/list-create)                       | ✅         |
| [Delete](https://developer.themoviedb.org/reference/list-delete)                       | ✅         |
| [Details](https://developer.themoviedb.org/reference/list-details)                     | ✅         |
| [Remove Movie](https://developer.themoviedb.org/reference/list-remove-movie)           | ✅         |

### Movie Lists

| **Feature**                                                                      | **Status** |
| -------------------------------------------------------------------------------- | ---------- |
| [Now Playing](https://developer.themoviedb.org/reference/movie-now-playing-list) | ✅         |
| [Popular](https://developer.themoviedb.org/reference/movie-popular-list)         | ✅         |
| [Top Rated](https://developer.themoviedb.org/reference/movie-top-rated-list)     | ✅         |
| [Upcoming](https://developer.themoviedb.org/reference/movie-upcoming-list)       | ✅         |

### Movies

| **Feature**                                                                               | **Status** |
| ----------------------------------------------------------------------------------------- | ---------- |
| [Details](https://developer.themoviedb.org/reference/movie-details)                       | ✅         |
| [Account States](https://developer.themoviedb.org/reference/movie-account-states)         | ✅         |
| [Alternative Titles](https://developer.themoviedb.org/reference/movie-alternative-titles) | ✅         |
| [Changes](https://developer.themoviedb.org/reference/movie-changes)                       | ✅         |
| [Credits](https://developer.themoviedb.org/reference/movie-credits)                       | ✅         |
| [External IDs](https://developer.themoviedb.org/reference/movie-external-ids)             | ✅         |
| [Images](https://developer.themoviedb.org/reference/movie-images)                         | ✅         |
| [Keywords](https://developer.themoviedb.org/reference/movie-keywords)                     | ✅         |
| [Latest](https://developer.themoviedb.org/reference/movie-latest)                         | ✅         |
| [Lists](https://developer.themoviedb.org/reference/movie-lists)                           | ✅         |
| [Recommendations](https://developer.themoviedb.org/reference/movie-recommendations)       | ✅         |
| [Release Dates](https://developer.themoviedb.org/reference/movie-release-dates)           | ✅         |
| [Reviews](https://developer.themoviedb.org/reference/movie-reviews)                       | ✅         |
| [Similar](https://developer.themoviedb.org/reference/movie-similar)                       | ✅         |
| [Translations](https://developer.themoviedb.org/reference/movie-translations)             | ✅         |
| [Videos](https://developer.themoviedb.org/reference/movie-videos)                         | ✅         |
| [Watch Providers](https://developer.themoviedb.org/reference/movie-watch-providers)       | ✅         |
| [Add Rating](https://developer.themoviedb.org/reference/movie-add-rating)                 | ✅         |
| [Delete Rating](https://developer.themoviedb.org/reference/movie-delete-rating)           | ✅         |

### Network

| **Feature**                                                                  | **Status** |
| ---------------------------------------------------------------------------- | ---------- |
| [Details](https://developer.themoviedb.org/reference/network-details)        | ✅         |
| [Alternative Names](https://developer.themoviedb.org/reference/details-copy) | ✅         |
| [Images](https://developer.themoviedb.org/reference/alternative-names-copy)  | ✅         |

### People Lists

| **Feature**                                                               | **Status** |
| ------------------------------------------------------------------------- | ---------- |
| [Popular](https://developer.themoviedb.org/reference/person-popular-list) | ✅         |

### People

| **Feature**                                                                            | **Status**  |
| -------------------------------------------------------------------------------------- | ----------- |
| [Details](https://developer.themoviedb.org/reference/person-details)                   | ✅          |
| [Changes](https://developer.themoviedb.org/reference/person-changes)                   | ✅          |
| [Combined Credits](https://developer.themoviedb.org/reference/person-combined-credits) | ✅          |
| [External IDs](https://developer.themoviedb.org/reference/person-external-ids)         | ✅          |
| [Images](https://developer.themoviedb.org/reference/person-images)                     | ✅          |
| [Latest](https://developer.themoviedb.org/reference/person-latest-id)                  | ✅          |
| [Movie Credits](https://developer.themoviedb.org/reference/person-movie-credits)       | ✅          |
| [TV Credits](https://developer.themoviedb.org/reference/person-tv-credits)             | ✅          |
| [Tagged Images](https://developer.themoviedb.org/reference/person-tagged-images)       | ☑️ Outdated |
| [Translations](https://developer.themoviedb.org/reference/translations)                | ✅          |

### Reviews

| **Feature**                                                          | **Status** |
| -------------------------------------------------------------------- | ---------- |
| [Details](https://developer.themoviedb.org/reference/review-details) | ✅         |

### Search

| **Feature**                                                                | **Status** |
| -------------------------------------------------------------------------- | ---------- |
| [Collection](https://developer.themoviedb.org/reference/search-collection) | ✅         |
| [Company](https://developer.themoviedb.org/reference/search-company)       | ✅         |
| [Keyword](https://developer.themoviedb.org/reference/search-keyword)       | ✅         |
| [Movie](https://developer.themoviedb.org/reference/search-movie)           | ✅         |
| [Multi](https://developer.themoviedb.org/reference/search-multi)           | ✅         |
| [Person](https://developer.themoviedb.org/reference/search-person)         | ✅         |
| [TV](https://developer.themoviedb.org/reference/search-tv)                 | ✅         |

### Trending

| **Feature**                                                          | **Status** |
| -------------------------------------------------------------------- | ---------- |
| [All](https://developer.themoviedb.org/reference/trending-all)       | ❌         |
| [Movies](https://developer.themoviedb.org/reference/trending-movies) | ❌         |
| [People](https://developer.themoviedb.org/reference/trending-people) | ❌         |
| [TV](https://developer.themoviedb.org/reference/trending-tv)         | ❌         |

### TV Series Lists

| **Feature**                                                                            | **Status** |
| -------------------------------------------------------------------------------------- | ---------- |
| [Airing Today](https://developer.themoviedb.org/reference/tv-series-airing-today-list) | ❌         |
| [On The Air](https://developer.themoviedb.org/reference/tv-series-on-the-air-list)     | ❌         |
| [Popular](https://developer.themoviedb.org/reference/tv-series-popular-list)           | ❌         |
| [Top Rated](https://developer.themoviedb.org/reference/tv-series-top-rated-list)       | ❌         |

### TV Series

| **Feature**                                                                                         | **Status** |
| --------------------------------------------------------------------------------------------------- | ---------- |
| [Details](https://developer.themoviedb.org/reference/tv-series-details)                             | ✅         |
| [Account States](https://developer.themoviedb.org/reference/tv-series-account-states)               | ✅         |
| [Aggregate Credits](https://developer.themoviedb.org/reference/tv-series-aggregate-credits)         | ✅         |
| [Alternative Titles](https://developer.themoviedb.org/reference/tv-series-alternative-titles)       | ✅         |
| [Changes](https://developer.themoviedb.org/reference/tv-series-changes)                             | ✅         |
| [Content Ratings](https://developer.themoviedb.org/reference/tv-series-content-ratings)             | ✅         |
| [Credits](https://developer.themoviedb.org/reference/tv-series-credits)                             | ✅         |
| [Episode Groups](https://developer.themoviedb.org/reference/tv-series-episode-groups)               | ✅         |
| [External IDs](https://developer.themoviedb.org/reference/tv-series-external-ids)                   | ✅         |
| [Images](https://developer.themoviedb.org/reference/tv-series-images)                               | ✅         |
| [Keywords](https://developer.themoviedb.org/reference/tv-series-keywords)                           | ✅         |
| [Latest](https://developer.themoviedb.org/reference/tv-series-latest-id)                            | ✅         |
| [Lists](https://developer.themoviedb.org/reference/lists-copy)                                      | ✅         |
| [Recommendations](https://developer.themoviedb.org/reference/tv-series-recommendations)             | ✅         |
| [Reviews](https://developer.themoviedb.org/reference/tv-series-reviews)                             | ✅         |
| [Screened Theatrically](https://developer.themoviedb.org/reference/tv-series-screened-theatrically) | ✅         |
| [Similar](https://developer.themoviedb.org/reference/tv-series-similar)                             | ✅         |
| [Translations](https://developer.themoviedb.org/reference/tv-series-translations)                   | ✅         |
| [Videos](https://developer.themoviedb.org/reference/tv-series-videos)                               | ✅         |
| [Watch Providers](https://developer.themoviedb.org/reference/tv-series-watch-providers)             | ✅         |
| [Add Rating](https://developer.themoviedb.org/reference/tv-series-add-rating)                       | ✅         |
| [Delete Rating](https://developer.themoviedb.org/reference/tv-series-delete-rating)                 | ✅         |

### TV Seasons

| **Feature**                                                                                 | **Status** |
| ------------------------------------------------------------------------------------------- | ---------- |
| [Details](https://developer.themoviedb.org/reference/tv-season-details)                     | ❌         |
| [Account States](https://developer.themoviedb.org/reference/tv-season-account-states)       | ❌         |
| [Aggregate Credits](https://developer.themoviedb.org/reference/tv-season-aggregate-credits) | ❌         |
| [Changes](https://developer.themoviedb.org/reference/tv-season-changes-by-id)               | ❌         |
| [Credits](https://developer.themoviedb.org/reference/tv-season-credits)                     | ❌         |
| [External IDs](https://developer.themoviedb.org/reference/tv-season-external-ids)           | ❌         |
| [Images](https://developer.themoviedb.org/reference/tv-season-images)                       | ❌         |
| [Translations](https://developer.themoviedb.org/reference/tv-season-translations)           | ❌         |
| [Videos](https://developer.themoviedb.org/reference/tv-season-videos)                       | ❌         |
| [Watch Providers](https://developer.themoviedb.org/reference/tv-season-watch-providers)     | ❌         |

### TV Episodes

| **Feature**                                                                            | **Status** |
| -------------------------------------------------------------------------------------- | ---------- |
| [Details](https://developer.themoviedb.org/reference/tv-episode-details)               | ❌         |
| [Account States](https://developer.themoviedb.org/reference/tv-episode-account-states) | ❌         |
| [Changes](https://developer.themoviedb.org/reference/tv-episode-changes-by-id)         | ❌         |
| [Credits](https://developer.themoviedb.org/reference/tv-episode-credits)               | ❌         |
| [External IDs](https://developer.themoviedb.org/reference/tv-episode-external-ids)     | ❌         |
| [Images](https://developer.themoviedb.org/reference/tv-episode-images)                 | ❌         |
| [Translations](https://developer.themoviedb.org/reference/tv-episode-translations)     | ❌         |
| [Videos](https://developer.themoviedb.org/reference/tv-episode-videos)                 | ❌         |
| [Add Rating](https://developer.themoviedb.org/reference/tv-episode-add-rating)         | ❌         |
| [Delete Rating](https://developer.themoviedb.org/reference/tv-episode-delete-rating)   | ❌         |

### TV Episode Groups

| **Feature**                                                                    | **Status** |
| ------------------------------------------------------------------------------ | ---------- |
| [Details](https://developer.themoviedb.org/reference/tv-episode-group-details) | ✅         |

### Watch Providers

| **Feature**                                                                                       | **Status** |
| ------------------------------------------------------------------------------------------------- | ---------- |
| [Available Regions](https://developer.themoviedb.org/reference/watch-providers-available-regions) | ✅         |
| [Movie Providers](https://developer.themoviedb.org/reference/watch-providers-movie-st)            | ✅         |
| [TV Providers](https://developer.themoviedb.org/reference/watch-provider-tv-st)                   | ✅         |
