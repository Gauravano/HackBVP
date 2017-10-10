class UserdetailController < ApiController

def index
	data={}
	data["organisation"]=Userdetail.all.includes(:user)
	return response_data data,"allQuestion",200
end

def create
   name=params["name"]
   address=params["address"]
   user_id=params["user_id"]
   numslots=params["numslots"]
   numvacant=params["numvacant"]
   mobilenum=params["mobilenum"]
   data =Userdetail.create name:name,address:address,user_id:user_id,numvacant:numvacant,numslots:numslots 
   		return response_data data,"answer created succesfully",200
end

end	