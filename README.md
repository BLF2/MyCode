####SpongeTime 团队管理模块
###接口设计
##普通用户接口
#interface PrimaryUsr{
  InviteUsr();
  ManageTask();
}
#interface AdminUsr extends PrimaryUsr{
  DismissUsr();
  ChangeInfo();
}
#interface RootUsr extends AdminUsr{
  CreatGroup();
  DismissGroup();
  AppointAdmin();
  DismissAdmin();
}
