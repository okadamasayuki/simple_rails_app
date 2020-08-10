Rails.application.routes.draw do
    get"/", to:"memos#index"
    get"/new",to:"memos#new"
    post"/create",to:"memos#create"
    patch "/change/:memo_id",to:"memos#change"
    delete "/delete/:id",to:"memos#destroy"
end
