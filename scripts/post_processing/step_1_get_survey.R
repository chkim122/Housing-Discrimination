library(jsonlite)
library(dplyr)

min_Survey_ID <- 327031
max_Survey_ID <- 327049

print("Pulling responses from Ona...")

URL <- "https://api.ona.io/api/v1/data?owner=chkim12"

options(timeout=1000000)

json <- fromJSON(URL)

response <- list()

for (i in 1:nrow(json)) {
	id <- strtoi(substr(json[i, "url"], 32, 38))
	# grabs the correct range of survey responses
	if ((min_Survey_ID <= id) && (id <= max_Survey_ID)) {
		response[[length(response) + 1]] <- fromJSON(json[i,"url"])
	}
}

df <- bind_rows(response)
df$`_notes` <- NULL
df$`_tags` <- NULL
df$`_geolocation` <- NULL
df$`_attachments` <- NULL

setwd("input")
write.csv(df, "responses_concatenated.csv", row.names = F)
print("responses_concatenated.csv has been written.")
