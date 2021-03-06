module RedactorRails
  # Model Attachment File
  class AttachmentFile < RedactorRails::Asset
    mount_uploader :data,
      RedactorRailsAttachmentFileUploader,
      mount_on: :data_file_name

    def url_content
      url(:content)
    end

    def as_json_methods
      [:image]
    end
  end
end
