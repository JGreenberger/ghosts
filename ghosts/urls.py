from django.conf.urls import patterns, include, url
from django.contrib import admin

from ghosts_app import views

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'ghosts.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    
    # url(r'^$', views.index, name='index'),
    # url(r'^createPerson', views.create_person, name= 'create_person'),
                       
                       
                       
                       url(r'^getSiteDetails', views.get_siteDetails, name= 'get_siteDetails'),
                       url(r'^getSource', views.get_source, name= 'get_source'),
                       url(r'^getSites', views.get_sites, name= 'get_sites'),
                       url(r'^getContentPoints', views.get_contentPoint, name= 'get_contentPoint'),
                       url(r'^getData', views.get_data, name= 'get_data'),
                       url(r'^getDataTransitionDetails', views.get_dataTransitionDetails, name= 'get_dataTransitionDetails'),
                       url(r'^getPictureTranslateDetails', views.get_pictureTranslateDetails, name= 'get_pictureTranslateDetails')
                      
                       
                       

    # url(r'^admin/', include(admin.site.urls))
)
