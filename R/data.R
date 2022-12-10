#' @title Washington Post Police Shooting Raw Dataset Version 1
#' @description The Washington Post has been compiling a database of every fatal shooting in the United States by a police officer in the line of duty since 2015. This is version 1 of the database.
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
"policeshootings_v1"

#' @title Washington Post Police Shooting Raw Dataset Version 2
#' @description The Washington Post has been compiling a database of every fatal shooting in the United States by a police officer in the line of duty since 2015. The Post created version 2 of this dataset in 2022 to refine and better define data categories, as well as improve documentation about how the data is obtained and classified. In addition to the altering of fields and formatting, a separate agencies dataset has been added which includes information on the law enforcement agencies which have been involved in at least one fatal shooting since 2015. Death record data about each incident and victim. The file can be downloaded at this URL. Victim information is obtained from any available recordings of the incident, news accounts, court records and/or official statements.
#' @format A data frame with 19 variables:
#' \describe{
#'   \item{\code{id}}{double A unique identifier for each fatal police shooting incident.}
#'   \item{\code{date}}{double The date of the fatal shooting.}
#'   \item{\code{threat_type}}{character Actions the victim took leading up to the fatal shooting.}
#'   \item{\code{flee_status}}{character How, if at all, was the victim moving relative to officers leading up to the shooting.}
#'   \item{\code{armed_with}}{character What, if anything, was the victim armed with per federal classifications based on NIBRS, the national incident-level crime reporting system. These categories are roughly reflected in local police data and forms. A NIBRS manual is can be found here (see values for data element Type Weapon/Force involved, on PDF page 104/report page 94).}
#'   \item{\code{city}}{character The municipality where the fatal shooting took place}
#'   \item{\code{county}}{character County where the fatal shooting took plce.}
#'   \item{\code{state}}{character The two-letter postal code abbreviation for the state in which the fatal shooting took place.}
#'   \item{\code{latitude}}{double The latitude location of the shooting expressed as WGS84 coordinates, geocoded from addresses. Please note that the precision and accuracy of incident coordinates varies depending on the precision of the input address which is often only available at the block level.}
#'   \item{\code{longitude}}{double The longitude location of the shooting expressed as WGS84 coordinates, geocoded from addresses.}
#'   \item{\code{location_precision}}{character Indicates the precision level of the input which was geocoded to generate the coordinate data.}
#'   \item{\code{name}}{character The name of the victim.}
#'   \item{\code{age}}{double The age of the victim at the time of the incident.}
#'   \item{\code{gender}}{character The gender of the victim. The Post identifies victims by the gender they identified with if reports indicate that it differs from their biological sex.}
#'   \item{\code{race}}{character The race and ethnicity (where known) of the victim. May contain multiple values to accommodate for multi-racial or several racial and ethnic identifications. Race has been included where news accounts, police reports or other official documents specifically mention a victim’s race or where researchers were able to make a visual determination on racial identification through photos. With the introduction of v2 of the database, the Post has began tracking multiple race and ethnicity designations; prior to 2021, only one race or ethnicity was assigned to most victims.}
#'   \item{\code{race_source}}{character Sourcing methodology for victim race data.}
#'   \item{\code{was_mental_illness_related}}{logical Whether news reports have indicated the victim had a history of mental health issues, expressed suicidal intentions or was experiencing mental distress at the time of the shooting.}
#'   \item{\code{body_camera}}{logical Whether news reports have indicated an officer was wearing a body camera and it may have recorded some portion of the incident.}
#'   \item{\code{agency_ids}}{character List of agency ids associated with the death record.}
#'}
#' @source \url{https://github.com/washingtonpost/data-police-shootings/}
"policeshootings_v2"

#' @title Washington Post Police Agencies Dataset for Shootings Dataset Version 2
#' @description Data for departments and agencies involved in a fatal police shooting in the database. This separate CSV can be joined with the death record CSV via the agency_ids value.
#' @format A data frame with 3103 rows and 6 variables:
#' \describe{
#'   \item{\code{id}}{double Department database id}
#'   \item{\code{name}}{character Department name}
#'   \item{\code{type}}{character Department type}
#'   \item{\code{state}}{character Department state}
#'   \item{\code{oricodes}}{character Department ORI codes (federal identifiers). Note that there can be multiple ORI codes for a single department due to aggregated sub-departments and/or differing values provided by the FBI vs DOJ.}
#'   \item{\code{total_shootings}}{double Total death records the agency has been involved with.}
#'}
#' @source \url{https://github.com/washingtonpost/data-police-shootings/}
"agencies_v2"
