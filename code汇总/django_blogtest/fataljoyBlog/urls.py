#-*- coding:utf-8 -*-

from django.conf.urls import patterns, include, url
import settings
from django.contrib import admin
import os
admin.autodiscover()

ROOT = os.path.dirname(__file__)

urlpatterns = patterns('',
    # Examples:
    url(r'^test$','fataljoyBlog.views.test'),
    url(r'^$', 'fataljoyBlog.blogapp.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r"^test/","fataljoyBlog.views.test",name="test"),
    url(r'^hello/(\d{1,2})/$',"fataljoyBlog.views.hello",name="hello"),
    url(r'^book_list/',"fataljoyBlog.views.book_list",name="book_list"),
    url(r'^adduser/','fataljoyBlog.blogapp.views.adduser',name='adduser'),
    url(r'^showusers/','fataljoyBlog.blogapp.views.showusers',name='showusers'),
    url(r'^admin/', include(admin.site.urls)),
    url(r'^article/(\d+)','fataljoyBlog.blogapp.views.articleView'),
    ( r'^css/(?P<path>.*)$', 'django.views.static.serve',
            { 'document_root': ROOT+'/css' }
    ),
    ( r'^js/(?P<path>.*)$', 'django.views.static.serve',
            { 'document_root': ROOT+'/js' }
    ),
    ( r'^images/(?P<path>.*)$', 'django.views.static.serve',
            { 'document_root': ROOT+'/images' }
    ),
    ( r'^ueEditor/(?P<path>.*)$', 'django.views.static.serve',
            { 'document_root': ROOT+'/ueEditor' }
    ),
)

urlpatterns+=patterns('',
    url(r'^fataljoyadmin','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/index.html'}),
    url(r'^fataljoyusercheck','fataljoyBlog.admin.views.checkuser'),
    url(r'^fataljoylogout','fataljoyBlog.admin.views.fataljoylogout'),
    url(r'^typography','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/typography.html'}),
    url(r'^wysiwyg','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/wysiwyg.html'}),
    url(r'^gallery','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/gallery.html'}), #图片 相册
    url(r'^master','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/master.html'}), #基础页 母版页
    url(r'^error404','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/error-404.html'}), #404错误页面
    url(r'^elements','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/elements.html'}), #组件
    url(r'^buttons','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/buttons.html'}), #按钮&图标
    url(r'^treeview','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/treeview.html'}), #树菜单
    url(r'^jquery-ui','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/jquery-ui.html'}), #Jquery ui
    url(r'^tables','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/tables.html'}), #简单表格
    url(r'^jqgrid','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/jqgrid.html'}), #jqgrid plugin
    url(r'^form-elements','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/form-elements.html'}), #表单组件
    url(r'^form-wizard','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/form-wizard.html'}), #表单提示验证
    url(r'^dropzone','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/dropzone.html'}), #文件上传
    url(r'^widgets','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/widgets.html'}), #插件
    url(r'^timeline','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/timeline.html'}), #时间轴
    url(r'^profile','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/profile.html'}), #个人信息
    url(r'^inbox','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/inbox.html'}), #收件箱
    url(r'^pricing','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/pricing.html'}), #售价单
    url(r'^error500','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/error-500.html'}), #500错误页
    url(r'^grid','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/grid.html'}), #网格布局
)

urlpatterns+=patterns('',
    url(r'^article-new','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/ArticleManage/ArticleNew.html'}),
    url(r'^article-post','fataljoyBlog.blogapp.views.saveArticle'),
    url(r'^getCategory$','fataljoyBlog.blogapp.views.asynHandler',{'action':'getCategory'}),#获取分类
    url(r'^getCategoryfortable','fataljoyBlog.blogapp.views.asynHandler',{'action':'getCategoryfortable'}),#获取分类
    url(r'^saveClassic','fataljoyBlog.blogapp.views.asynHandler',{'action':'saveClassic'}),#保存分类
    url(r'^updateClassic','fataljoyBlog.blogapp.views.asynHandler',{'action':'updateClassic'}),
    url(r'^deleteCategory$','fataljoyBlog.blogapp.views.asynHandler',{'action':'deleteCategory'}),#获取分类
    url(r'^articlelist','fataljoyBlog.blogapp.views.getList'),
    url(r'^article-edit/(\d+)','fataljoyBlog.blogapp.views.editArticle'),#文章编辑页面 (\d+)为文章id
    url(r'^delete-Article','fataljoyBlog.blogapp.views.asynHandler',{'action':'deleteArticle'}),
    url(r'^classic','fataljoyBlog.admin.views.check_auth_redirect',{'template_name':'fataljoyadmin/ClassicManage/classicNew.html'}),
    url(r'^comment-commit$','fataljoyBlog.blogapp.views.asynHandler',{'action':'commitComment'}),#提交评论
)


urlpatterns+=patterns('',
    url(r'^ueEditorControler','fataljoyBlog.admin.controller.handler'),
)