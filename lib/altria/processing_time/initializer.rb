Job.property(:enable_processing_time, type: :boolean)

JobsController.prepend_view_path File.expand_path("../../../../app/views", __FILE__)

JobsController.before_filter only: :show do
  if @resource.enable_processing_time
    view_context.content_for :jobs_show, render_to_string(partial: "processing_time").html_safe
  end
end
