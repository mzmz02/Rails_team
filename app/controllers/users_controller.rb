class UsersController < ApplicationController
  before_action :authenticate_user, {only: [:index, :show, :edit, :update]}
  before_action :ensure_correct_user, {only: [:edit, :update]}
  before_action :forbid_login_user, {only: [:new, :create, :login_form, :login]}

    def index
      @users = User.all
    end
    
    def show
      @user = User.find_by(id: params[:id])
    end
    
    def new
      @user=User.new
    end

    def edit
      @user = User.find_by(id: params[:id])
    end
  
    def create
      @user = User.new(
          name: params[:name], 
          email: params[:email],
          image_name: "start.jpg",
          password: params[:password]
      )
      if @user.save
        session[:user_id] = @user.id
        redirect_to("/users/#{@user.id}")
      else
        render("/users/new")
        flash[:alert]="すべての項目を入力してください"
      end
    end

    def update
        @user = User.find_by(id: params[:id])
        @user.name = params[:name]
        @user.email = params[:email]

        if params[:image]
            @user.image_name="#{@user.id}.jpg"
            image=params[:image]
            File.binwrite("public/user_images/#{@user.image_name}", image.read)
        end
          
        if @user.save
            redirect_to("/users/#{@user.id}")
        else
            render("users/edit")
        end
    end

    def login_new
    end

    def login
      @user = User.find_by(email: params[:email], password: params[:password])
      if @user
        session[:user_id] = @user.id
        redirect_to("/users/index")
      else
        flash[:alert] = "メールアドレスまたはパスワードが間違っています"
        @email = params[:email]
        @password = params[:password]
        render("users/login_new")
      end
    end
    
    def logout
      session[:user_id] = nil
      redirect_to("/login")
    end

    def ensure_correct_user
      if @current_user.id!=params[:id].to_i
        flash[:alert]="	You have no authorization."
        redirect_to("/users/index")
      end
    end

  end
  