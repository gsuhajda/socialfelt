<?php

	header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
	header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

	$_config = array();
	$_config['email'] = array(
		'name' => 'SocialFelt.org',
		'email' => 'socialfelt@gmail.com',
		'subject' => 'Message from SocialFelt.org'
	);

	function checkEmailValid($data, $strict = false) { 
		$regex = $strict? 
			'/^([.0-9a-z_-]+)@(([0-9a-z-]+\.)+[0-9a-z]{2,4})$/i' : 
			'/^([*+!.&#$¦\'\\%\/0-9a-z^_`{}=?~:-]+)@(([0-9a-z-]+\.)+[0-9a-z]{2,4})$/i' 
		; 
		if (preg_match($regex, trim($data), $matches)) { 
			return array($matches[1], $matches[2]); 
		} else { 
			return false; 
		} 
	}
	
	function returnJSON($data, $die = true){
		header('Content-Type: application/json');
		echo json_encode($data);
		if ($die) {
			die();
		}
	}

	function loadTemplate($tpl) {
		$file = 'mail/template/'.$tpl.'.tpl';
		if (file_exists($file)) { return file_get_contents($file); } else { return false; }
	}	

	function sendMail($template, $mail_data, $template_data, $debug = false) {

		global $_config;

		$content = '';
		$mailbody = loadTemplate($template);
		if ($mailbody) {
			foreach ($template_data as $key=>$val) { $mailbody = preg_replace("/%".$key."%/",''.$val.'',$mailbody); }
			$content = $mailbody;
		}

		require_once('mail/lib/phpmailerautoload.php');

		$mail = new PHPMailer();
		$mail->CharSet = 'UTF-8';
		$mail->isSMTP();
		$mail->SMTPDebug = $debug ? 2 : 0;   // 0 for production, 2 for debug
		$mail->Debugoutput = 'html';

		if (isset($mail_data['bccs']) && is_array($mail_data['bccs'])) {
			foreach($mail_data['bccs'] as $bcc){ $mail->AddBCC($bcc); }
		}
		if (isset($mail_data['attachments']) && is_array($mail_data['attachments'])) {
			foreach ($mail_data['attachments'] as $att) {
				$mail->AddAttachment($att['file'], $att['name']);
			}
		}
		$mail->setFrom($mail_data['sender_email'], $mail_data['sender_name']);
		$mail->addReplyTo($mail_data['sender_email'], $mail_data['sender_name']);
		$mail->addAddress($mail_data['email']);
		$mail->Subject = $mail_data['subject'];
		$mail->msgHTML($content);
		$mail->AltBody = !empty($mail_data['plaintext']) ? $mail_data['plaintext'] : '';

		//send the message, check for errors
		if (!$mail->send()) {
			$re = false;
			// echo "Mailer Error: " . $mail->ErrorInfo;
		} else {
			$re = true;
			// echo "Message sent!";
		}

		return $re;

	}

	if (isset($_POST['mail_method'])) {

		if ($_POST['mail_method']=='send') {

			if (!empty($_POST['email_confirm'])) {
				$re = array('success' => false, 'error' => 'general', 'msg' => 'Are you a robot?');
				returnJSON($re);
			}

			if (!checkEmailValid($_POST['email'])) {
				$re = array('success' => false, 'error' => 'email', 'msg' => 'Are you sure that your e-mail is right?');
				returnJSON($re);
			}

			if (empty($_POST['message']) || (!empty($_POST['message']) && strlen($_POST['message'])<10)) {
				$re = array('success' => false, 'error' => 'message', 'msg' => 'Please write a longer message!');
				returnJSON($re);
			}

			$email = $_POST['email'];
			list($guessname,$guessdomain) = explode('@', $email);
			$name = !empty($_POST['name']) ? $_POST['name'] : $guessname;
			$subject = !empty($_POST['subject']) ?  $_POST['subject'] : $_config['email']['subject'] . ' - ' . $guessname;

			$mail_tpl = 'message';
			$mail_data = array(
				'sender_name' => $name,
				'sender_email' => $email,
				'email' => $_config['email']['email'],
				'subject' => $subject,
				'plaintext' => $_POST['message']
			);

			$template_data = array(
				'sender_name' => $name,
				'sender_email' => $email,
				'send_time' => date('Y-m-d H:i:s'),
				'message' => nl2br($_POST['message'])
			);

			$m = sendMail($mail_tpl,$mail_data,$template_data);

			if ($m) {
				$re = array('success' => true);
			} else {
				$re = array('success' => false, 'error' => 'general', 'msg' => 'Error: Sending mail');
			}
			returnJSON($re);

		}

	}

?>