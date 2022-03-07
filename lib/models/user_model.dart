class UserResponse {
  String? id;
  User? user;

  UserResponse({this.id, this.user});

  UserResponse.fromJson(Map<String, dynamic> json) {
    id = json['$id'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$id'] = this.id;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  String? id;
  int? userId;
  String? userName;
  Null? password;
  int? cashDrawerLimit;
  RefUserRole? refUserRole;
  bool? isActive;
  Null? rVersion;
  bool? isUpdate;
  bool? isWebCall;
  Null? machineId;
  int? entryFlag;
  int? businessId;
  int? menuId;
  int? menuItemId;

  User(
      {this.id,
        this.userId,
        this.userName,
        this.password,
        this.cashDrawerLimit,
        this.refUserRole,
        this.isActive,
        this.rVersion,
        this.isUpdate,
        this.isWebCall,
        this.machineId,
        this.entryFlag,
        this.businessId,
        this.menuId,
        this.menuItemId});

  User.fromJson(Map<String, dynamic> json) {
    id = json['$id'];
    userId = json['userId'];
    userName = json['userName'];
    password = json['password'];
    cashDrawerLimit = json['cashDrawerLimit'];
    refUserRole = json['refUserRole'] != null
        ? new RefUserRole.fromJson(json['refUserRole'])
        : null;
    isActive = json['isActive'];
    rVersion = json['rVersion'];
    isUpdate = json['isUpdate'];
    isWebCall = json['isWebCall'];
    machineId = json['machineId'];
    entryFlag = json['entryFlag'];
    businessId = json['businessId'];
    menuId = json['menuId'];
    menuItemId = json['menuItemId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$id'] = this.id;
    data['userId'] = this.userId;
    data['userName'] = this.userName;
    data['password'] = this.password;
    data['cashDrawerLimit'] = this.cashDrawerLimit;
    if (this.refUserRole != null) {
      data['refUserRole'] = this.refUserRole!.toJson();
    }
    data['isActive'] = this.isActive;
    data['rVersion'] = this.rVersion;
    data['isUpdate'] = this.isUpdate;
    data['isWebCall'] = this.isWebCall;
    data['machineId'] = this.machineId;
    data['entryFlag'] = this.entryFlag;
    data['businessId'] = this.businessId;
    data['menuId'] = this.menuId;
    data['menuItemId'] = this.menuItemId;
    return data;
  }
}

class RefUserRole {
  String? id;
  int? userRoleId;
  Null? title;
  bool? canCreate;
  bool? canEdit;
  bool? canDelete;
  bool? canViewReports;
  bool? isActive;
  // LoUserRoleDetail? loUserRoleDetail;
  // LoUserRoleDetail? loUserRoleSetting;
  Null? rVersion;
  bool? isUpdate;
  bool? isWebCall;
  Null? machineId;
  int? entryFlag;
  int? userId;
  int? businessId;
  int? menuId;
  int? menuItemId;

  RefUserRole(
      {this.id,
        this.userRoleId,
        this.title,
        this.canCreate,
        this.canEdit,
        this.canDelete,
        this.canViewReports,
        this.isActive,
        // this.loUserRoleDetail,
        // this.loUserRoleSetting,
        this.rVersion,
        this.isUpdate,
        this.isWebCall,
        this.machineId,
        this.entryFlag,
        this.userId,
        this.businessId,
        this.menuId,
        this.menuItemId});

  RefUserRole.fromJson(Map<String, dynamic> json) {
    id = json['$id'];
    userRoleId = json['userRoleId'];
    title = json['title'];
    canCreate = json['canCreate'];
    canEdit = json['canEdit'];
    canDelete = json['canDelete'];
    canViewReports = json['canViewReports'];
    isActive = json['isActive'];
    // loUserRoleDetail = json['loUserRoleDetail'] != null
    //     ? new LoUserRoleDetail.fromJson(json['loUserRoleDetail'])
    //     : null;
    // loUserRoleSetting = json['loUserRoleSetting'] != null
    //     ? new LoUserRoleDetail.fromJson(json['loUserRoleSetting'])
    //     : null;
    rVersion = json['rVersion'];
    isUpdate = json['isUpdate'];
    isWebCall = json['isWebCall'];
    machineId = json['machineId'];
    entryFlag = json['entryFlag'];
    userId = json['userId'];
    businessId = json['businessId'];
    menuId = json['menuId'];
    menuItemId = json['menuItemId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$id'] = this.id;
    data['userRoleId'] = this.userRoleId;
    data['title'] = this.title;
    data['canCreate'] = this.canCreate;
    data['canEdit'] = this.canEdit;
    data['canDelete'] = this.canDelete;
    data['canViewReports'] = this.canViewReports;
    data['isActive'] = this.isActive;
    // if (this.loUserRoleDetail != null) {
    //   data['loUserRoleDetail'] = this.loUserRoleDetail!.toJson();
    // }
    // if (this.loUserRoleSetting != null) {
    //   data['loUserRoleSetting'] = this.loUserRoleSetting!.toJson();
    // }
    data['rVersion'] = this.rVersion;
    data['isUpdate'] = this.isUpdate;
    data['isWebCall'] = this.isWebCall;
    data['machineId'] = this.machineId;
    data['entryFlag'] = this.entryFlag;
    data['userId'] = this.userId;
    data['businessId'] = this.businessId;
    data['menuId'] = this.menuId;
    data['menuItemId'] = this.menuItemId;
    return data;
  }
}

// class LoUserRoleDetail {
//   String? id;
//   List<Null>? values;
//
//   LoUserRoleDetail({this.id, this.values});
//
//   LoUserRoleDetail.fromJson(Map<String, dynamic> json) {
//     id = json['$id'];
//     if (json['$values'] != null) {
//       values = <Null>[];
//       json['$values'].forEach((v) {
//         values!.add(new Null.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['$id'] = this.id;
//     if (this.values != null) {
//       data['$values'] = this.values!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
