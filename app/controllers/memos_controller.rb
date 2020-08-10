class MemosController < ApplicationController
    def index
        @memos=Memo.all
    end
    
    def new
        
    end
    
    def create
        memo=Memo.create(title:params["memo"]["title"],body:params["memo"]["body"],category_id:params["memo"]["category_id"])
        memo.save
        redirect_to"/"
    end
    
    def change
        @memo=Memo.find(params["memo_id"])
    end
    
    def destroy
        memo=Memo.find(params["id"])
        memo.destroy
        redirect_to"/"
    end
end
