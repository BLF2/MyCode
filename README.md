#SpongeTime 团队管理模块
##接口设计
###普通用户接口
   
interface PrimaryUsr{
    
  InviteUsr();
      
  ManageTask();
        
}
###管理员接口
      
interface AdminUsr extends PrimaryUsr{
      
  DismissUsr();
        
  ChangeInfo();
        
}
###创建者接口
      
interface RootUsr extends AdminUsr{
      
  CreatGroup();
        
  DismissGroup();
        
  AppointAdmin();
        
  DismissAdmin();
        
}
