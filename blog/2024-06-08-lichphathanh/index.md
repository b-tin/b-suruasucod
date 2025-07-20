---
slug: lichphathanh-06-2024
title: Lịch Phát Hành Truyện 06/2024
authors: [btin]
tags: [nxbtre, nxbkimdong, lichphathanh-06-2024]
---

## Lịch phát hành truyện tranh NXB Kim Đồng tháng 06/2024

![nxbkimdong_06](nxbkimdong_06.jpeg)

## Lịch phát hành truyện tranh NXB Trẻ tháng 06/2024

![nxbtre_06](nxbtre_06.jpeg)


### Options

| Name                             | Type                                     | Default      | Description                                                                                                                                  |
| -------------------------------- | ---------------------------------------- | ------------ | -------------------------------------------------------------------------------------------------------------------------------------------- |
| indexDocs                        | boolean                                  | `true`       | Whether to index docs.                                                                                                                       |
| indexBlog                        | boolean                                  | `true`       | Whether to index blog.                                                                                                                       |
| indexPages                       | boolean                                  | `false`      | Whether to index pages.                                                                                                                      |
| docsRouteBasePath                | string \| string[]                       | `"/docs"`    | Base route path(s) of docs. Slash at beginning is not required.                                                                              |
| blogRouteBasePath                | string \| string[]                       | `"/blog"`    | Base route path(s) of blog. Slash at beginning is not required.                                                                              |
| language                         | string \| string[]                       | `"en"`       | All [lunr-languages](https://github.com/MihaiValentin/lunr-languages) supported languages, + `zh` 🔥.                                        |
| hashed                           | boolean                                  | `false`      | Whether to add a hashed query when fetching index (based on the content hash of all indexed `*.md` in `docsDir` and `blogDir` if applicable) |
| docsDir                          | string \| string[]                       | `"docs"`     | The dir(s) of docs to get the content hash, it's relative to the dir of your project.                                                        |
| blogDir                          | string \| string[]                       | `"blog"`     | Just like the `docsDir` but applied to blog.                                                                                                 |
| removeDefaultStopWordFilter      | boolean                                  | `false`      | Sometimes people (E.g., us) want to keep the English stop words as indexed, since they maybe are relevant in programming docs.               |
| highlightSearchTermsOnTargetPage | boolean                                  | `false`      | Highlight search terms on target page.                                                                                                       |
| searchResultLimits               | number                                   | `8`          | Limit the search results.                                                                                                                    |
| searchResultContextMaxLength     | number                                   | `50`         | Set the max length of characters of each search result to show.                                                                              |
| translations                     | TranslationMap                           | -            | Set translations of this plugin, see [docs below](#translations).                                                                            |
| ignoreFiles                      | string \| RegExp \| (string \| RegExp)[] | /**meta**\$/ | Set the match rules to ignore some files.                                                                                                    |