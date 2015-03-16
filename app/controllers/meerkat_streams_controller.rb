class MeerkatStreamsController < ApplicationController
  def index
    @meerkat_streams = MeerkatStream.all
  end

  def show
    @meerkat_stream = MeerkatStream.find(params[:id])
  end

  def new
    @meerkat_stream = MeerkatStream.new
  end

  def edit
    @meerkat_stream = MeerkatStream.find(params[:id])
  end

  def create
    @meerkat_stream = MeerkatStream.new(meerkat_stream_params)

    @meerkat_stream.save
    redirect_to @meerkat_stream
  end

  def update
    @meerkat_stream = MeerkatStream.find(params[:id])

    if @meerkat_stream.update(meerkat_stream_params)
      redirect_to @meerkat_stream
    else
      render 'edit'
    end
  end

  def destroy
    @meerkat_stream = MeerkatStream.find(params[:id])
    @meerkat_stream.destroy

    redirect_to meerkat_streams_path
  end

private
  def meerkat_stream_params
    params.require(:meerkat_stream).permit(:link)
  end
end