#c.Spawner.default_url = '/lab'
# /lab对应jupyterlab 默认为notebook
c.JupyterHub.port = 80
# 指定暴露端口
c.PAMAuthenticator.encoding = 'utf8'
c.Authenticator.whitelist = {'root','admin', 'jupyter', 'aiker'}
# 指定可使用用户
c.LocalAuthenticator.create_system_users = True
c.Authenticator.admin_users = {'root', 'admin'}
# 指定admin用户
c.JupyterHub.statsd_prefix = 'jupyterhub'
c.Spawner.notebook_dir = '/jupyterhub/study' 
#jupyterhub自定义目录
c.Spawner.cmd=['jupyterhub-singleuser']
c.JupyterHub.port = 443
# 更换端口为443
# 证书从阿里云安装到本地
c.JupyterHub.ssl_cert = 'jupyterhub.yutao.co.pem'
c.JupyterHub.ssl_key = 'jupyterhub.yutao.co.key'
