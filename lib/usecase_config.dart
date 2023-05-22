import 'package:pluto_grid_crud/features/users/data/datasources/user_local_data_source.dart';
import 'package:pluto_grid_crud/features/users/data/repositories/user_repository_impl.dart';
import 'package:pluto_grid_crud/features/users/domain/usecases/create_user_usecase.dart';
import 'package:pluto_grid_crud/features/users/domain/usecases/delete_user_usecase.dart';
import 'package:pluto_grid_crud/features/users/domain/usecases/get_users_usecase.dart';
import 'package:pluto_grid_crud/features/users/domain/usecases/update_user_usecase.dart';

class UsecaseConfig {
  UserLocalDataSourceImp? userLocalDataSourceImp;
  UserRepositoryImpl? userRepositoryImpl;

  GetUsersUsecase? getUsersUsecase;
  CreateUserUsecase? createUserUsecase;
  UpdateUserUsecase? updateUserUsecase;
  DeleteUserUsecase? deleteUserUsecase;

  UsecaseConfig() {
    userLocalDataSourceImp = UserLocalDataSourceImp();
    userRepositoryImpl = UserRepositoryImpl(userLocalDataSource: userLocalDataSourceImp!);

    getUsersUsecase = GetUsersUsecase(userRepositoryImpl!);
    createUserUsecase = CreateUserUsecase(userRepositoryImpl!);
    updateUserUsecase = UpdateUserUsecase(userRepositoryImpl!);
    deleteUserUsecase = DeleteUserUsecase(userRepositoryImpl!);
  }
}