var t;
t=outlookbar.addtitle('系统属性')
outlookbar.additem('系统属性',t,'/ssh_shuiguochaoshi/admin/index/sysPro.jsp')


t=outlookbar.addtitle('修改密码')
outlookbar.additem('密码修改',t,'/ssh_shuiguochaoshi/admin/userinfo/userPw.jsp')


t=outlookbar.addtitle('用户管理')
outlookbar.additem('用户管理',t,'/ssh_shuiguochaoshi/userMana.action')

t=outlookbar.addtitle('水果类别')
outlookbar.additem('类别管理',t,'/ssh_shuiguochaoshi/catelogMana.action')
outlookbar.additem('添加类别',t,'/ssh_shuiguochaoshi/admin/catelog/catelogAdd.jsp')

t=outlookbar.addtitle('水果管理')
outlookbar.additem('水果管理',t,'/ssh_shuiguochaoshi/goodsManaNoTejia.action')
outlookbar.additem('添加水果',t,'/ssh_shuiguochaoshi/admin/goods/goodsNoTejiaAdd.jsp')


t=outlookbar.addtitle('订单管理')
outlookbar.additem('订单管理',t,'/ssh_shuiguochaoshi/orderMana.action')

t=outlookbar.addtitle('网站论坛')
outlookbar.additem('网站论坛',t,'/ssh_shuiguochaoshi/liuyanMana.action')
outlookbar.additem('网站公告',t,'/ssh_shuiguochaoshi/gonggaoMana.action')



t=outlookbar.addtitle('退出系统') 
outlookbar.additem('安全退出',t,'/ssh_shuiguochaoshi/login.jsp')