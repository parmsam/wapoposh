#' @title Washington Post Police Shooting Raw Dataset
#' @description The Washington Post has been compiling a database of every fatal shooting in the United States by a police officer in the line of duty since 2015.
#' @format A data frame with 17 variables:
#' \describe{
#'   \item{\code{id}}{double a unique identifier for each victim}
#'   \item{\code{name}}{character the name of the victim}
#'   \item{\code{date}}{double the date of the fatal shooting in YYYY-MM-DD format}
#'   \item{\code{manner_of_death}}{character manner of death}
#'   \item{\code{armed}}{character indicates that the victim was armed with some sort of implement that a police officer believed could inflict harm}
#'   \item{\code{age}}{double the age of the victim}
#'   \item{\code{gender}}{character the gender of the victim. The Post identifies victims by the gender they identify with if reports indicate that it differs from their biological sex.}
#'   \item{\code{race}}{character race of victim}
#'   \item{\code{city}}{character the municipality where the fatal shooting took place. Note that in some cases this field may contain a county name if a more specific municipality is unavailable or unknown.}
#'   \item{\code{state}}{character two-letter postal code abbreviation}
#'   \item{\code{signs_of_mental_illness}}{logical News reports have indicated the victim had a history of mental health issues, expressed suicidal intentions or was experiencing mental distress at the time of the shooting.}
#'   \item{\code{threat_level}}{character The threat_level column was used to flag incidents for the story by Amy Brittain in October 2015. http://www.washingtonpost.com/sf/investigative/2015/10/24/on-duty-under-fire/ As described in the story, the general criteria for the attack label was that there was the most direct and immediate threat to life. That would include incidents where officers or others were shot at, threatened with a gun, attacked with other weapons or physical force, etc. The attack category is meant to flag the highest level of threat. The other and undetermined categories represent all remaining cases. Other includes many incidents where officers or others faced significant threats.}
#'   \item{\code{flee}}{character News reports have indicated the victim was moving away from officers}
#'   \item{\code{body_camera}}{logical News reports have indicated an officer was wearing a body camera and it may have recorded some portion of the incident.}
#'   \item{\code{longitude}}{double the longitue location of the shooting expressed as WGS84 coordinates, geocoded from addresses. The coordinates are rounded to 3 decimal places, meaning they have a precision of about 80-100 meters within the contiguous U.S.}
#'   \item{\code{latitude}}{double the latitue location of the shooting expressed as WGS84 coordinates, geocoded from addresses. The coordinates are rounded to 3 decimal places, meaning they have a precision of about 80-100 meters within the contiguous U.S.}
#'   \item{\code{is_geocoding_exact}}{logical reflects the accuracy of the coordinates. true means that the coordinates are for the location of the shooting (within approximately 100 meters), while false means that coordinates are for the centroid of a larger region, such as the city or county where the shooting happened}
#'}
#' @source \url{https://github.com/washingtonpost/data-police-shootings/}
"policeshootings"