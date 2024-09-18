class DocsController < ApplicationController
  before_action :authenticate_user!
  # def index
  #   @docs = Doc.all
  # end

  # def show
  #   @doc = Doc.find(params[:id])
  # end
  def index
    @docs = current_user.docs  # Show only the docs that belong to the logged-in user
  end

  def show
    @doc = Doc.find(params[:id])
  end

  def new
    @doc = Doc.new
  end

  def create
    @doc = current_user.docs.build(doc_params)  # Associate the doc with the logged-in user

    if @doc.save
      redirect_to @doc, notice: 'Doc was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @doc = Doc.find(params[:id])
  end

  def update
    @doc = Doc.find(params[:id])

    if @doc.update(doc_params)
      redirect_to @doc
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @doc = Doc.find(params[:id])
    @doc.destroy

    redirect_to docs_path, status: :see_other
  end

  private
    def doc_params
      params.require(:doc).permit(:title, :body)
    end
end
