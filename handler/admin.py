#!/usr/bin/env python
# coding=utf-8
#
# Copyright 2013 3n1b.com

from PIL import Image
import time
import json
import tornado.web
import lib.jsonp
from tornado.escape import json_decode


from base import *
from lib.variables import *

import json  
from datetime import date, datetime  
class MyEncoder(json.JSONEncoder):  
    def default(self, obj):  
        if isinstance(obj, datetime):  
            return obj.strftime('%Y-%m-%d %H:%M:%S')  
        elif isinstance(obj, date):  
            return obj.strftime('%Y-%m-%d')  
        else:  
            return json.JSONEncoder.default(self, obj)

class AdminIndexnHandler(BaseHandler):
    def get(self, template_variables = {}):
        user_info = self.current_user
        if not user_info or int(user_info["uid"]) !=1:
            self.redirect("/")
        else:
            template_variables["username"]=user_info["username"]
            self.render("admin/views/index.html", **template_variables)

class AdminUserIndexHandler(BaseHandler):
    def get(self, template_variables = {}):
            self.render("admin/views/userdata.html", **template_variables)

class AdminHomeHandler(BaseHandler):
    def get(self, template_variables = {}):
        self.render("admin/views/home.html", **template_variables)

class AdminDataHandler(BaseHandler):
    def get(self):
        topic_info_list={"code":0,"msg":"","count":1000,"data":[]}
        sql = "SELECT id,title,hits,created,author_id,reply_count FROM topic"
        userinfosql="SELECT uid,username FROM user"
        user_info_dict={useritem["uid"]:useritem["username"] for useritem in self.db.query(userinfosql)}
        topic_data=[]
        for dataitem in self.db.query(sql):
            dataitem["auth_name"]=user_info_dict[dataitem["author_id"]]
            topic_data.append(dataitem)
        topic_info_list["data"]=topic_data
        self.write(json.dumps(topic_info_list,cls=MyEncoder))
    def post(self):
        method = self.get_body_argument("method")
        blog_id=self.get_body_argument("id")
        if method == "delete":
            try:
               topic_sql="DELETE FROM topic WHERE id = %s"
               reply_sql="DELETE FROM reply WHERE topic_id = %s"
               vote_sql="DELETE FROM vote WHERE involved_topic_id = %s"
               self.db.execute(topic_sql,blog_id)
               self.db.execute(reply_sql,blog_id)
               self.db.execute(vote_sql,blog_id)
            except Exception as e:
                self.write(json.dumps({"msg":str(e),"error":1}))
            else:
                self.write(json.dumps({"msg":"删除成功...","error":0}))
               
        else:
            self.write(json.dumps({"msg":1,"error":0}))


class AdminUserDataHandler(BaseHandler):
    def get(self):
        topic_info_list={"code":0,"msg":"","count":1000,"data":[]}
        userinfosql="SELECT uid,email,created,last_login,username FROM user"
        topic_info_list["data"]=self.db.query(userinfosql)
        self.write(json.dumps(topic_info_list,cls=MyEncoder))
    def post(self):
        method = self.get_body_argument("method")
        uid=self.get_body_argument("uid")
        if method == "edit":
            self.write(json.dumps({"msg":"编辑","error":0}))
               
        else:
            self.write(json.dumps({"msg":1,"error":0}))
