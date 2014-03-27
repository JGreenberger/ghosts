from django.db import models

class year(models.Model):
    yearID = models.AutoField(primary_key=True)
    yearName = models.CharField(max_length = 15)

class dataType(models.Model):
    dataTypeID = models.AutoField(primary_key=True)
    dataTypeName = models.CharField(max_length = 100)

class siteDetails(models.Model):
    siteID = models.CharField(max_length = 100)
    siteDetailsID = models.AutoField(primary_key=True)
    siteDetailsPicture = models.CharField(max_length = 500)
    siteDetailsPictureType = models.CharField(max_length = 100)
    siteDetailsAudio = models.CharField(max_length = 500)
    siteDetailsAudioType = models.CharField(max_length = 100)
    siteDetailsVideo = models.CharField(max_length = 500)
    siteDetailsVideoType = models.CharField(max_length = 100)

class source(models.Model):
    sourceID = models.AutoField(primary_key=True)
    dataID = models.CharField(max_length = 100)
    sourceTitle = models.CharField(max_length = 500)
    sourceWeb = models.CharField(max_length = 500)
    sourceAuthor = models.CharField(max_length = 100)
    sourceYear = models.CharField(max_length = 100)
    sourcePublisher = models.CharField(max_length = 500)
    sourceOther = models.CharField(max_length = 100)

class sites(models.Model):
    siteID = models.AutoField(primary_key=True)
    xCoord = models.CharField(max_length = 100)
    yCoord = models.CharField(max_length = 100)
    siteTitle = models.CharField(max_length = 500)
    latitude = models.CharField(max_length = 100)
    longitude = models.CharField(max_length = 100)
    dataID = models.CharField(max_length = 100)
    siteSubSiteTypeID = models.CharField(max_length = 100)

class contentPoint(models.Model):
    contentPointID = models.AutoField(primary_key=True)
    contentPointTitle = models.CharField(max_length = 500)
    contentPointYearID = models.CharField(max_length = 100)
    siteID = models.CharField(max_length = 100)

class data(models.Model):
    dataID = models.AutoField(primary_key=True)
    dataXCoord = models.CharField(max_length = 100)
    dataYCoord = models.CharField(max_length = 100)
    dataWidth = models.CharField(max_length = 100)
    dataHeight = models.CharField(max_length = 100)
    dataTypeID = models.CharField(max_length = 100)
    dataInfo = models.CharField(max_length = 1000)
    dataInfoFileType = models.CharField(max_length = 100)
    contentPointID = models.CharField(max_length = 100)

class dataTransitionDetails(models.Model):
    dataTransitionDetailsID = models.AutoField(primary_key=True)
    dataID = models.CharField(max_length = 100)
    dataTransitionDetailsPicture = models.CharField(max_length = 500)
    dataTransitionDetailsPictureFileType = models.CharField(max_length = 100)
    dataTransitionDetailsAudio = models.CharField(max_length = 500)
    dataTransitionDetailsAudioFileType = models.CharField(max_length = 100)
    dataTransitionDetailsVideo = models.CharField(max_length = 500)
    dataTransitionDetailsVideoType = models.CharField(max_length = 100)
    dataTransitionDetails3D = models.CharField(max_length = 500)
    dataTransitionDetails3DType = models.CharField(max_length = 100)


class pictureTranslateDetails(models.Model):
    pictureTranslateDetailsID = models.AutoField(primary_key=True)
    dataID = models.CharField(max_length = 100)
    xCoord = models.CharField(max_length = 100)
    yCoord = models.CharField(max_length = 100)
    height = models.CharField(max_length = 100)
    width = models.CharField(max_length = 100)
    word = models.CharField(max_length = 500)

class siteSubSiteType(models.Model):
    siteSubSiteTypeID = models.AutoField(primary_key=True)
    siteSubSiteType = models.CharField(max_length = 100)

# Create your models here.
