from django.shortcuts import render
from django.http import HttpResponse
from django.utils import simplejson
from ghosts_app.models import *

import json

def get_siteDetails(request):
    if request.method == "GET":
        queryset = siteDetails.objects.all()
        return HttpResponse(simplejson.dumps([{'siteID': o.siteID, 'siteDetailsID': o.siteDetailsID, 'siteDetailsPicture': o.siteDetailsPicture, 'siteDetailsPictureType': o.siteDetailsPictureType, 'siteDetailsAudio': o.siteDetailsAudio, 'siteDetailsAudioType': o.siteDetailsAudioType, 'siteDetailsVideo': o.siteDetailsVideo, 'siteDetailsVideoType': o.siteDetailsVideoType} for o in queryset]), content_type="application/json")


def get_source(request):
    if request.method == "GET":
        queryset = source.objects.all()
        return HttpResponse(simplejson.dumps([{'sourceID': o.sourceID, 'dataID': o.dataID, 'sourceTitle': o.sourceTitle, 'sourceWeb': o.sourceWeb, 'sourceAuthor': o.sourceAuthor, 'sourceYear': o.sourceYear, 'sourcePublisher': o.sourcePublisher, 'sourceOther': o.sourceOther} for o in queryset]), content_type="application/json")


def get_sites(request):
    if request.method == "GET":
        queryset = sites.objects.all()
        return HttpResponse(simplejson.dumps([{'siteID': o.siteID, 'xCoord': o.xCoord, 'yCoord': o.yCoord, 'siteTitle': o.siteTitle, 'latitude': o.latitude, 'longitude': o.longitude, 'dataID': o.dataID, 'siteSubSiteTypeID': o.siteSubSiteTypeID} for o in queryset]), content_type="application/json")


def get_contentPoint(request):
    if request.method == "GET":
        queryset = contentPoint.objects.all()
        return HttpResponse(simplejson.dumps([{'contentPointID': o.contentPointID, 'contentPointTitle': o.contentPointTitle, 'contentPointYearID': o.contentPointYearID, 'siteID': o.siteID} for o in queryset]), content_type="application/json")


def get_data(request):
    if request.method == "GET":
        queryset = data.objects.all()
        return HttpResponse(simplejson.dumps([{'dataID': o.dataID, 'dataXCoord': o.dataXCoord, 'dataYCoord': o.dataYCoord, 'dataWidth': o.dataWidth, 'dataHeight': o.dataHeight, 'dataTypeID': o.dataTypeID, 'dataInfo': o.dataInfo, 'dataInfoFileType': o.dataInfoFileType, 'contentPointID': o.contentPointID} for o in queryset]), content_type="application/json")


def get_dataTransitionDetails(request):
    if request.method == "GET":
        queryset = dataTransitionDetails.objects.all()
        return HttpResponse(simplejson.dumps([{'dataTransitionDetailsID': o.dataTransitionDetailsID, 'dataID': o.dataID, 'dataTransitionDetailsPicture': o.dataTransitionDetailsPicture, 'dataTransitionDetailsPictureFileType': o.dataTransitionDetailsPictureFileType, 'dataTransitionDetailsAudio': o.dataTransitionDetailsAudio, 'dataTransitionDetailsAudioFileType': o.dataTransitionDetailsAudioFileType, 'dataTransitionDetailsVideo': o.dataTransitionDetailsVideo, 'dataTransitionDetailsVideoType': o.dataTransitionDetailsVideoType, 'dataTransitionDetails3D': o.dataTransitionDetails3D, 'dataTransitionDetails3DType': o.dataTransitionDetails3DType} for o in queryset]), content_type="application/json")


def get_pictureTranslateDetails(request):
    if request.method == "GET":
        queryset = pictureTranslateDetails.objects.all()
        return HttpResponse(simplejson.dumps([{'pictureTranslateDetailsID': o.pictureTranslateDetailsID, 'dataID': o.dataID, 'xCoord': o.xCoord, 'yCoord': o.yCoord, 'height': o.height, 'width': o.width, 'word': o.word} for o in queryset]), content_type="application/json")







		
