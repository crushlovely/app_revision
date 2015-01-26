class AppRevision::RevisionsController < AppRevision::ApplicationController
  def show
    render :text => current_revision
  end

  protected

  def current_revision
    File.read(File.join(Rails.root, 'REVISION'))
  rescue Errno::ENOENT
    'UNKNOWN'
  end
end
